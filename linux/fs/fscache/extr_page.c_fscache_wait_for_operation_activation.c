
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_operation {scalar_t__ state; int flags; } ;
struct fscache_object {int cookie; } ;
typedef enum fscache_operation_state { ____Placeholder_fscache_operation_state } fscache_operation_state ;
typedef int atomic_t ;


 int ENOBUFS ;
 int ERESTARTSYS ;
 scalar_t__ FSCACHE_OP_ST_CANCELLED ;
 int FSCACHE_OP_WAITING ;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int _debug (char*) ;
 int _leave (char*,...) ;
 scalar_t__ fscache_cache_is_broken (struct fscache_object*) ;
 int fscache_cancel_op (struct fscache_operation*,int) ;
 scalar_t__ fscache_object_is_dying (struct fscache_object*) ;
 int fscache_op_signal ;
 int fscache_stat (int *) ;
 int test_bit (int ,int *) ;
 int trace_fscache_op (int ,struct fscache_operation*,int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ wait_on_bit (int *,int ,int ) ;

int fscache_wait_for_operation_activation(struct fscache_object *object,
       struct fscache_operation *op,
       atomic_t *stat_op_waits,
       atomic_t *stat_object_dead)
{
 int ret;

 if (!test_bit(FSCACHE_OP_WAITING, &op->flags))
  goto check_if_dead;

 _debug(">>> WT");
 if (stat_op_waits)
  fscache_stat(stat_op_waits);
 if (wait_on_bit(&op->flags, FSCACHE_OP_WAITING,
   TASK_INTERRUPTIBLE) != 0) {
  trace_fscache_op(object->cookie, op, fscache_op_signal);
  ret = fscache_cancel_op(op, 0);
  if (ret == 0)
   return -ERESTARTSYS;



  wait_on_bit(&op->flags, FSCACHE_OP_WAITING,
       TASK_UNINTERRUPTIBLE);
 }
 _debug("<<< GO");

check_if_dead:
 if (op->state == FSCACHE_OP_ST_CANCELLED) {
  if (stat_object_dead)
   fscache_stat(stat_object_dead);
  _leave(" = -ENOBUFS [cancelled]");
  return -ENOBUFS;
 }
 if (unlikely(fscache_object_is_dying(object) ||
       fscache_cache_is_broken(object))) {
  enum fscache_operation_state state = op->state;
  trace_fscache_op(object->cookie, op, fscache_op_signal);
  fscache_cancel_op(op, 1);
  if (stat_object_dead)
   fscache_stat(stat_object_dead);
  _leave(" = -ENOBUFS [obj dead %d]", state);
  return -ENOBUFS;
 }
 return 0;
}
