
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int usage; } ;


 int key_check (struct key*) ;
 int key_gc_work ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int schedule_work (int *) ;

void key_put(struct key *key)
{
 if (key) {
  key_check(key);

  if (refcount_dec_and_test(&key->usage))
   schedule_work(&key_gc_work);
 }
}
