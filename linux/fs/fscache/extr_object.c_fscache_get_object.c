
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fscache_object {TYPE_2__* cache; } ;
typedef enum fscache_obj_ref_trace { ____Placeholder_fscache_obj_ref_trace } fscache_obj_ref_trace ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {scalar_t__ (* grab_object ) (struct fscache_object*,int) ;} ;


 int EAGAIN ;
 int fscache_n_cop_grab_object ;
 int fscache_stat (int *) ;
 int fscache_stat_d (int *) ;
 scalar_t__ stub1 (struct fscache_object*,int) ;

__attribute__((used)) static int fscache_get_object(struct fscache_object *object,
         enum fscache_obj_ref_trace why)
{
 int ret;

 fscache_stat(&fscache_n_cop_grab_object);
 ret = object->cache->ops->grab_object(object, why) ? 0 : -EAGAIN;
 fscache_stat_d(&fscache_n_cop_grab_object);
 return ret;
}
