
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (void*,void*,unsigned int) ;

__attribute__((used)) static inline bool keys_match(void *key, void *test_key, unsigned key_size)
{
 bool match = 1;

 if (memcmp(key, test_key, key_size))
  match = 0;

 return match;
}
