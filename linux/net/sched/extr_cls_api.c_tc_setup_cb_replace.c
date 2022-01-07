
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_proto {TYPE_1__* ops; } ;
struct tcf_block {int cb_lock; scalar_t__ nooffloaddevcnt; scalar_t__ lockeddevcnt; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;
struct TYPE_2__ {int (* hw_add ) (struct tcf_proto*,void*) ;int (* hw_del ) (struct tcf_proto*,void*) ;} ;


 int EOPNOTSUPP ;
 scalar_t__ READ_ONCE (scalar_t__) ;
 int __tc_setup_cb_call (struct tcf_block*,int,void*,int) ;
 int down_read (int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct tcf_proto*,void*) ;
 int stub2 (struct tcf_proto*,void*) ;
 int tc_cls_offload_cnt_reset (struct tcf_block*,struct tcf_proto*,unsigned int*,int *) ;
 int tc_cls_offload_cnt_update (struct tcf_block*,struct tcf_proto*,unsigned int*,int *,int,int) ;
 int up_read (int *) ;

int tc_setup_cb_replace(struct tcf_block *block, struct tcf_proto *tp,
   enum tc_setup_type type, void *type_data, bool err_stop,
   u32 *old_flags, unsigned int *old_in_hw_count,
   u32 *new_flags, unsigned int *new_in_hw_count,
   bool rtnl_held)
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


 if (block->nooffloaddevcnt && err_stop) {
  ok_count = -EOPNOTSUPP;
  goto err_unlock;
 }

 tc_cls_offload_cnt_reset(block, tp, old_in_hw_count, old_flags);
 if (tp->ops->hw_del)
  tp->ops->hw_del(tp, type_data);

 ok_count = __tc_setup_cb_call(block, type, type_data, err_stop);
 if (ok_count < 0)
  goto err_unlock;

 if (tp->ops->hw_add)
  tp->ops->hw_add(tp, type_data);
 if (ok_count > 0)
  tc_cls_offload_cnt_update(block, tp, new_in_hw_count,
       new_flags, ok_count, 1);
err_unlock:
 up_read(&block->cb_lock);
 if (take_rtnl)
  rtnl_unlock();
 return ok_count < 0 ? ok_count : 0;
}
