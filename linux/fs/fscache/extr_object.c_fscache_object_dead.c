
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_state {int dummy; } ;
struct fscache_object {int flags; } ;


 int FSCACHE_OBJECT_RUN_AFTER_DEAD ;
 struct fscache_state const* NO_TRANSIT ;
 int WARN (int,char*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static const struct fscache_state *fscache_object_dead(struct fscache_object *object,
             int event)
{
 if (!test_and_set_bit(FSCACHE_OBJECT_RUN_AFTER_DEAD,
         &object->flags))
  return NO_TRANSIT;

 WARN(1, "FS-Cache object redispatched after death");
 return NO_TRANSIT;
}
