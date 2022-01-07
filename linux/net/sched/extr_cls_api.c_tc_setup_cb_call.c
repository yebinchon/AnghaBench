
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int cb_lock; scalar_t__ lockeddevcnt; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 scalar_t__ READ_ONCE (scalar_t__) ;
 int __tc_setup_cb_call (struct tcf_block*,int,void*,int) ;
 int down_read (int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int up_read (int *) ;

int tc_setup_cb_call(struct tcf_block *block, enum tc_setup_type type,
       void *type_data, bool err_stop, bool rtnl_held)
{
 bool take_rtnl = READ_ONCE(block->lockeddevcnt) && !rtnl_held;
 int ok_count;

retry:
 if (take_rtnl)
  rtnl_lock();
 down_read(&block->cb_lock);




 if (!rtnl_held && !take_rtnl && block->lockeddevcnt) {
  up_read(&block->cb_lock);
  take_rtnl = 1;
  goto retry;
 }

 ok_count = __tc_setup_cb_call(block, type, type_data, err_stop);

 up_read(&block->cb_lock);
 if (take_rtnl)
  rtnl_unlock();
 return ok_count;
}
