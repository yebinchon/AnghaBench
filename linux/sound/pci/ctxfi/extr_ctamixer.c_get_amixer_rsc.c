
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amixer_mgr {int mgr_lock; int mgr; TYPE_1__* card; } ;
struct amixer_desc {int msr; } ;
struct amixer {unsigned int* idx; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int amixer_rsc_init (struct amixer*,struct amixer_desc const*,struct amixer_mgr*) ;
 int dev_err (int ,char*) ;
 int kfree (struct amixer*) ;
 struct amixer* kzalloc (int,int ) ;
 int mgr_get_resource (int *,int,unsigned int*) ;
 int mgr_put_resource (int *,int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int get_amixer_rsc(struct amixer_mgr *mgr,
     const struct amixer_desc *desc,
     struct amixer **ramixer)
{
 int err, i;
 unsigned int idx;
 struct amixer *amixer;
 unsigned long flags;

 *ramixer = ((void*)0);


 amixer = kzalloc(sizeof(*amixer), GFP_KERNEL);
 if (!amixer)
  return -ENOMEM;



 err = 0;
 spin_lock_irqsave(&mgr->mgr_lock, flags);
 for (i = 0; i < desc->msr; i++) {
  err = mgr_get_resource(&mgr->mgr, 1, &idx);
  if (err)
   break;

  amixer->idx[i] = idx;
 }
 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 if (err) {
  dev_err(mgr->card->dev,
   "Can't meet AMIXER resource request!\n");
  goto error;
 }

 err = amixer_rsc_init(amixer, desc, mgr);
 if (err)
  goto error;

 *ramixer = amixer;

 return 0;

error:
 spin_lock_irqsave(&mgr->mgr_lock, flags);
 for (i--; i >= 0; i--)
  mgr_put_resource(&mgr->mgr, 1, amixer->idx[i]);

 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 kfree(amixer);
 return err;
}
