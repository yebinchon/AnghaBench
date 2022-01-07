
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static int64_t cmp_null(const void *l, const void *r)
{
 if (!l && !r)
  return 0;
 else if (!l)
  return -1;
 else
  return 1;
}
