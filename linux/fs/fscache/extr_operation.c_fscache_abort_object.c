
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_object {int debug_id; } ;


 int FSCACHE_OBJECT_EV_ERROR ;
 int _enter (char*,int ) ;
 int fscache_raise_event (struct fscache_object*,int ) ;

void fscache_abort_object(struct fscache_object *object)
{
 _enter("{OBJ%x}", object->debug_id);

 fscache_raise_event(object, FSCACHE_OBJECT_EV_ERROR);
}
