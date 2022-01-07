
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct key {int flags; int sem; int keys; scalar_t__ description; int serial; } ;


 int KEY_FLAG_INVALIDATED ;
 int KEY_FLAG_REVOKED ;
 int assoc_array_gc (int *,int *,int ,int *) ;
 int assoc_array_iterate (int *,int ,int *) ;
 int down_write (int *) ;
 int kenter (char*,int ,char*) ;
 int keyring_assoc_array_ops ;
 int keyring_gc_check_iterator ;
 int keyring_gc_select_iterator ;
 int kleave (char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int up_write (int *) ;

void keyring_gc(struct key *keyring, time64_t limit)
{
 int result;

 kenter("%x{%s}", keyring->serial, keyring->description ?: "");

 if (keyring->flags & ((1 << KEY_FLAG_INVALIDATED) |
         (1 << KEY_FLAG_REVOKED)))
  goto dont_gc;


 rcu_read_lock();
 result = assoc_array_iterate(&keyring->keys,
         keyring_gc_check_iterator, &limit);
 rcu_read_unlock();
 if (result == 1)
  goto do_gc;

dont_gc:
 kleave(" [no gc]");
 return;

do_gc:
 down_write(&keyring->sem);
 assoc_array_gc(&keyring->keys, &keyring_assoc_array_ops,
         keyring_gc_select_iterator, &limit);
 up_write(&keyring->sem);
 kleave(" [gc]");
}
