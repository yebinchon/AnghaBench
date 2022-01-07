
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_object {int * cookie; } ;


 int fscache_cookie_put (int *,int ) ;
 int fscache_cookie_put_object ;
 int fscache_objlist_remove (struct fscache_object*) ;

void fscache_object_destroy(struct fscache_object *object)
{
 fscache_objlist_remove(object);


 fscache_cookie_put(object->cookie, fscache_cookie_put_object);
 object->cookie = ((void*)0);
}
