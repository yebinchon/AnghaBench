
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fscache_object {int flags; TYPE_1__* state; int debug_id; struct fscache_cookie* cookie; } ;
struct fscache_cookie {int flags; } ;
struct TYPE_2__ {int name; } ;


 int FSCACHE_COOKIE_LOOKING_UP ;
 int FSCACHE_COOKIE_NO_DATA_YET ;
 int FSCACHE_COOKIE_UNAVAILABLE ;
 int FSCACHE_OBJECT_IS_AVAILABLE ;
 int FSCACHE_OBJECT_IS_LOOKED_UP ;
 int _enter (char*,int ,int ) ;
 int _leave (char*) ;
 int clear_bit (int ,int *) ;
 int clear_bit_unlock (int ,int *) ;
 int fscache_n_object_created ;
 int fscache_n_object_lookups_positive ;
 int fscache_stat (int *) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

void fscache_obtained_object(struct fscache_object *object)
{
 struct fscache_cookie *cookie = object->cookie;

 _enter("{OBJ%x,%s}", object->debug_id, object->state->name);



 if (!test_and_set_bit(FSCACHE_OBJECT_IS_LOOKED_UP, &object->flags)) {
  fscache_stat(&fscache_n_object_lookups_positive);


  clear_bit_unlock(FSCACHE_COOKIE_NO_DATA_YET, &cookie->flags);
  clear_bit(FSCACHE_COOKIE_UNAVAILABLE, &cookie->flags);




  clear_bit_unlock(FSCACHE_COOKIE_LOOKING_UP, &cookie->flags);
  wake_up_bit(&cookie->flags, FSCACHE_COOKIE_LOOKING_UP);
 } else {
  fscache_stat(&fscache_n_object_created);
 }

 set_bit(FSCACHE_OBJECT_IS_AVAILABLE, &object->flags);
 _leave("");
}
