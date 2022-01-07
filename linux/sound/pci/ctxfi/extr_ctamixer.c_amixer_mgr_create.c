
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int card; } ;
struct amixer_mgr {int card; int put_amixer; int get_amixer; int mgr_lock; int mgr; } ;


 int AMIXER ;
 int AMIXER_RESOURCE_NUM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int get_amixer_rsc ;
 int kfree (struct amixer_mgr*) ;
 struct amixer_mgr* kzalloc (int,int ) ;
 int put_amixer_rsc ;
 int rsc_mgr_init (int *,int ,int ,struct hw*) ;
 int spin_lock_init (int *) ;

int amixer_mgr_create(struct hw *hw, struct amixer_mgr **ramixer_mgr)
{
 int err;
 struct amixer_mgr *amixer_mgr;

 *ramixer_mgr = ((void*)0);
 amixer_mgr = kzalloc(sizeof(*amixer_mgr), GFP_KERNEL);
 if (!amixer_mgr)
  return -ENOMEM;

 err = rsc_mgr_init(&amixer_mgr->mgr, AMIXER, AMIXER_RESOURCE_NUM, hw);
 if (err)
  goto error;

 spin_lock_init(&amixer_mgr->mgr_lock);

 amixer_mgr->get_amixer = get_amixer_rsc;
 amixer_mgr->put_amixer = put_amixer_rsc;
 amixer_mgr->card = hw->card;

 *ramixer_mgr = amixer_mgr;

 return 0;

error:
 kfree(amixer_mgr);
 return err;
}
