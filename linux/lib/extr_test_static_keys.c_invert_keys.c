
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_key {struct static_key* key; } ;
struct static_key {int dummy; } ;


 int invert_key (struct static_key*) ;

__attribute__((used)) static void invert_keys(struct test_key *keys, int size)
{
 struct static_key *previous = ((void*)0);
 int i;

 for (i = 0; i < size; i++) {
  if (previous != keys[i].key) {
   invert_key(keys[i].key);
   previous = keys[i].key;
  }
 }
}
