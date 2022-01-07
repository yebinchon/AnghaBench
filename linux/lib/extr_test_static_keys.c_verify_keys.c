
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_key {int init_state; int (* test_key ) () ;int key; } ;


 int EINVAL ;
 int static_key_enabled (int ) ;
 int stub1 () ;

__attribute__((used)) static int verify_keys(struct test_key *keys, int size, bool invert)
{
 int i;
 bool ret, init;

 for (i = 0; i < size; i++) {
  ret = static_key_enabled(keys[i].key);
  init = keys[i].init_state;
  if (ret != (invert ? !init : init))
   return -EINVAL;
  ret = keys[i].test_key();
  if (static_key_enabled(keys[i].key)) {
   if (!ret)
    return -EINVAL;
  } else {
   if (ret)
    return -EINVAL;
  }
 }
 return 0;
}
