
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t strcspn(const char *s, const char *reject)
{
 const char *p;
 const char *r;
 size_t count = 0;

 for (p = s; *p != '\0'; ++p) {
  for (r = reject; *r != '\0'; ++r) {
   if (*p == *r)
    return count;
  }
  ++count;
 }
 return count;
}
