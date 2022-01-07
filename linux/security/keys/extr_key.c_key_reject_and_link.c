
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {scalar_t__ state; unsigned int expiry; int flags; int index_key; TYPE_1__* user; scalar_t__ restrict_link; } ;
struct assoc_array_edit {int dummy; } ;
struct TYPE_2__ {int nikeys; } ;


 int EBUSY ;
 int EPERM ;
 int KEY_FLAG_USER_CONSTRUCT ;
 scalar_t__ KEY_IS_UNINSTANTIATED ;
 int __key_link (struct key*,struct assoc_array_edit**) ;
 int __key_link_begin (struct key*,int *,struct assoc_array_edit**) ;
 int __key_link_end (struct key*,int *,struct assoc_array_edit*) ;
 int __key_link_lock (struct key*,int *) ;
 int atomic_inc (int *) ;
 int key_check (struct key*) ;
 int key_construction_mutex ;
 unsigned int key_gc_delay ;
 int key_invalidate (struct key*) ;
 int key_schedule_gc (unsigned int) ;
 unsigned int ktime_get_real_seconds () ;
 int mark_key_instantiated (struct key*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

int key_reject_and_link(struct key *key,
   unsigned timeout,
   unsigned error,
   struct key *keyring,
   struct key *authkey)
{
 struct assoc_array_edit *edit = ((void*)0);
 int ret, awaken, link_ret = 0;

 key_check(key);
 key_check(keyring);

 awaken = 0;
 ret = -EBUSY;

 if (keyring) {
  if (keyring->restrict_link)
   return -EPERM;

  link_ret = __key_link_lock(keyring, &key->index_key);
  if (link_ret == 0) {
   link_ret = __key_link_begin(keyring, &key->index_key, &edit);
   if (link_ret < 0)
    __key_link_end(keyring, &key->index_key, edit);
  }
 }

 mutex_lock(&key_construction_mutex);


 if (key->state == KEY_IS_UNINSTANTIATED) {

  atomic_inc(&key->user->nikeys);
  mark_key_instantiated(key, -error);
  key->expiry = ktime_get_real_seconds() + timeout;
  key_schedule_gc(key->expiry + key_gc_delay);

  if (test_and_clear_bit(KEY_FLAG_USER_CONSTRUCT, &key->flags))
   awaken = 1;

  ret = 0;


  if (keyring && link_ret == 0)
   __key_link(key, &edit);


  if (authkey)
   key_invalidate(authkey);
 }

 mutex_unlock(&key_construction_mutex);

 if (keyring && link_ret == 0)
  __key_link_end(keyring, &key->index_key, edit);


 if (awaken)
  wake_up_bit(&key->flags, KEY_FLAG_USER_CONSTRUCT);

 return ret == 0 ? link_ret : ret;
}
