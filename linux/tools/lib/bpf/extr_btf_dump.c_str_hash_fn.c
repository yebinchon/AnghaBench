
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t str_hash_fn(const void *key, void *ctx)
{
 const char *s = key;
 size_t h = 0;

 while (*s) {
  h = h * 31 + *s;
  s++;
 }
 return h;
}
