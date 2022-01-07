
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_family {int attrbuf; int id; } ;


 int CTRL_CMD_DELFAMILY ;
 int ENOENT ;
 scalar_t__ atomic_read (int *) ;
 int cb_lock ;
 int genl_ctrl_event (int ,struct genl_family const*,int *,int ) ;
 int genl_fam_idr ;
 int genl_family_find_byid (int ) ;
 int genl_lock_all () ;
 int genl_sk_destructing_cnt ;
 int genl_sk_destructing_waitq ;
 int genl_unlock () ;
 int genl_unlock_all () ;
 int genl_unregister_mc_groups (struct genl_family const*) ;
 int idr_remove (int *,int ) ;
 int kfree (int ) ;
 int up_write (int *) ;
 int wait_event (int ,int) ;

int genl_unregister_family(const struct genl_family *family)
{
 genl_lock_all();

 if (!genl_family_find_byid(family->id)) {
  genl_unlock_all();
  return -ENOENT;
 }

 genl_unregister_mc_groups(family);

 idr_remove(&genl_fam_idr, family->id);

 up_write(&cb_lock);
 wait_event(genl_sk_destructing_waitq,
     atomic_read(&genl_sk_destructing_cnt) == 0);
 genl_unlock();

 kfree(family->attrbuf);

 genl_ctrl_event(CTRL_CMD_DELFAMILY, family, ((void*)0), 0);

 return 0;
}
