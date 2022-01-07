
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int dentry_string_cmp(const unsigned char *cs, const unsigned char *ct, unsigned tcount)
{
 do {
  if (*cs != *ct)
   return 1;
  cs++;
  ct++;
  tcount--;
 } while (tcount);
 return 0;
}
