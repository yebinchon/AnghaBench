
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fscache_state {int dummy; } ;
struct fscache_operation {int flags; } ;
struct fscache_object {TYPE_2__* cache; int flags; struct fscache_cookie* cookie; int debug_id; } ;
struct fscache_cookie {int lock; int flags; int stores; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int invalidate_object; } ;


 int ASSERT (int ) ;
 int FSCACHE_COOKIE_INVALIDATING ;
 int FSCACHE_COOKIE_NO_DATA_YET ;
 int FSCACHE_OBJECT_PENDING_WRITE ;
 int FSCACHE_OBJECT_RETIRED ;
 int FSCACHE_OP_ASYNC ;
 int FSCACHE_OP_EXCLUSIVE ;
 int FSCACHE_OP_UNUSE_COOKIE ;
 int GFP_KERNEL ;
 int KILL_OBJECT ;
 int UPDATE_OBJECT ;
 int _enter (char*,int ,int) ;
 int _leave (char*) ;
 int clear_bit (int ,int *) ;
 int fscache_cancel_all_ops (struct fscache_object*) ;
 int fscache_invalidate_writes (struct fscache_cookie*) ;
 int fscache_mark_object_dead (struct fscache_object*) ;
 int fscache_operation_init (struct fscache_cookie*,struct fscache_operation*,int ,int *,int *) ;
 int fscache_page_op_invalidate ;
 int fscache_put_operation (struct fscache_operation*) ;
 scalar_t__ fscache_submit_exclusive_op (struct fscache_object*,struct fscache_operation*) ;
 int fscache_unuse_cookie (struct fscache_object*) ;
 int fscache_use_cookie (struct fscache_object*) ;
 int kfree (struct fscache_operation*) ;
 struct fscache_operation* kzalloc (int,int ) ;
 int radix_tree_empty (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int trace_fscache_page_op (struct fscache_cookie*,int *,struct fscache_operation*,int ) ;
 struct fscache_state const* transit_to (int ) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static const struct fscache_state *_fscache_invalidate_object(struct fscache_object *object,
             int event)
{
 struct fscache_operation *op;
 struct fscache_cookie *cookie = object->cookie;

 _enter("{OBJ%x},%d", object->debug_id, event);




 if (!fscache_use_cookie(object)) {
  ASSERT(radix_tree_empty(&object->cookie->stores));
  set_bit(FSCACHE_OBJECT_RETIRED, &object->flags);
  _leave(" [no cookie]");
  return transit_to(KILL_OBJECT);
 }


 fscache_invalidate_writes(cookie);
 clear_bit(FSCACHE_OBJECT_PENDING_WRITE, &object->flags);
 fscache_cancel_all_ops(object);


 op = kzalloc(sizeof(*op), GFP_KERNEL);
 if (!op)
  goto nomem;

 fscache_operation_init(cookie, op, object->cache->ops->invalidate_object,
          ((void*)0), ((void*)0));
 op->flags = FSCACHE_OP_ASYNC |
  (1 << FSCACHE_OP_EXCLUSIVE) |
  (1 << FSCACHE_OP_UNUSE_COOKIE);
 trace_fscache_page_op(cookie, ((void*)0), op, fscache_page_op_invalidate);

 spin_lock(&cookie->lock);
 if (fscache_submit_exclusive_op(object, op) < 0)
  goto submit_op_failed;
 spin_unlock(&cookie->lock);
 fscache_put_operation(op);





 set_bit(FSCACHE_COOKIE_NO_DATA_YET, &cookie->flags);




 if (test_and_clear_bit(FSCACHE_COOKIE_INVALIDATING, &cookie->flags))
  wake_up_bit(&cookie->flags, FSCACHE_COOKIE_INVALIDATING);
 _leave(" [ok]");
 return transit_to(UPDATE_OBJECT);

nomem:
 fscache_mark_object_dead(object);
 fscache_unuse_cookie(object);
 _leave(" [ENOMEM]");
 return transit_to(KILL_OBJECT);

submit_op_failed:
 fscache_mark_object_dead(object);
 spin_unlock(&cookie->lock);
 fscache_unuse_cookie(object);
 kfree(op);
 _leave(" [EIO]");
 return transit_to(KILL_OBJECT);
}
