
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int sem; int flags; } ;


 int KEY_FLAG_INVALIDATED ;
 int down_write_nested (int *,int) ;
 int kenter (char*,int ) ;
 int key_check (struct key*) ;
 int key_schedule_gc_links () ;
 int key_serial (struct key*) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int up_write (int *) ;

void key_invalidate(struct key *key)
{
 kenter("%d", key_serial(key));

 key_check(key);

 if (!test_bit(KEY_FLAG_INVALIDATED, &key->flags)) {
  down_write_nested(&key->sem, 1);
  if (!test_and_set_bit(KEY_FLAG_INVALIDATED, &key->flags))
   key_schedule_gc_links();
  up_write(&key->sem);
 }
}
