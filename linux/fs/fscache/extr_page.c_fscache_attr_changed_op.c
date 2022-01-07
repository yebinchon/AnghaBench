
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fscache_operation {int debug_id; struct fscache_object* object; } ;
struct fscache_object {TYPE_1__* cache; int debug_id; } ;
struct TYPE_4__ {int (* attr_changed ) (struct fscache_object*) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int _enter (char*,int ,int ) ;
 int _leave (char*) ;
 int fscache_abort_object (struct fscache_object*) ;
 int fscache_n_attr_changed_calls ;
 int fscache_n_cop_attr_changed ;
 scalar_t__ fscache_object_is_active (struct fscache_object*) ;
 int fscache_op_complete (struct fscache_operation*,int) ;
 int fscache_stat (int *) ;
 int fscache_stat_d (int *) ;
 int stub1 (struct fscache_object*) ;

__attribute__((used)) static void fscache_attr_changed_op(struct fscache_operation *op)
{
 struct fscache_object *object = op->object;
 int ret;

 _enter("{OBJ%x OP%x}", object->debug_id, op->debug_id);

 fscache_stat(&fscache_n_attr_changed_calls);

 if (fscache_object_is_active(object)) {
  fscache_stat(&fscache_n_cop_attr_changed);
  ret = object->cache->ops->attr_changed(object);
  fscache_stat_d(&fscache_n_cop_attr_changed);
  if (ret < 0)
   fscache_abort_object(object);
  fscache_op_complete(op, ret < 0);
 } else {
  fscache_op_complete(op, 1);
 }

 _leave("");
}
