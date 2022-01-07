
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key_preparsed_payload {scalar_t__ expiry; } ;
struct key {scalar_t__ state; scalar_t__ expiry; int flags; TYPE_2__* user; TYPE_1__* type; } ;
struct assoc_array_edit {int dummy; } ;
struct TYPE_4__ {int nikeys; } ;
struct TYPE_3__ {int (* instantiate ) (struct key*,struct key_preparsed_payload*) ;} ;


 int EBUSY ;
 int KEY_FLAG_KEEP ;
 int KEY_FLAG_USER_CONSTRUCT ;
 scalar_t__ KEY_IS_UNINSTANTIATED ;
 scalar_t__ TIME64_MAX ;
 int __key_link (struct key*,struct assoc_array_edit**) ;
 int atomic_inc (int *) ;
 int key_check (struct key*) ;
 int key_construction_mutex ;
 scalar_t__ key_gc_delay ;
 int key_invalidate (struct key*) ;
 int key_schedule_gc (scalar_t__) ;
 int mark_key_instantiated (struct key*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct key*,struct key_preparsed_payload*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static int __key_instantiate_and_link(struct key *key,
          struct key_preparsed_payload *prep,
          struct key *keyring,
          struct key *authkey,
          struct assoc_array_edit **_edit)
{
 int ret, awaken;

 key_check(key);
 key_check(keyring);

 awaken = 0;
 ret = -EBUSY;

 mutex_lock(&key_construction_mutex);


 if (key->state == KEY_IS_UNINSTANTIATED) {

  ret = key->type->instantiate(key, prep);

  if (ret == 0) {

   atomic_inc(&key->user->nikeys);
   mark_key_instantiated(key, 0);

   if (test_and_clear_bit(KEY_FLAG_USER_CONSTRUCT, &key->flags))
    awaken = 1;


   if (keyring) {
    if (test_bit(KEY_FLAG_KEEP, &keyring->flags))
     set_bit(KEY_FLAG_KEEP, &key->flags);

    __key_link(key, _edit);
   }


   if (authkey)
    key_invalidate(authkey);

   if (prep->expiry != TIME64_MAX) {
    key->expiry = prep->expiry;
    key_schedule_gc(prep->expiry + key_gc_delay);
   }
  }
 }

 mutex_unlock(&key_construction_mutex);


 if (awaken)
  wake_up_bit(&key->flags, KEY_FLAG_USER_CONSTRUCT);

 return ret;
}
