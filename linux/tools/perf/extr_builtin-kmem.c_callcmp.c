
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_func {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static int callcmp(const void *a, const void *b)
{
 const struct alloc_func *fa = a;
 const struct alloc_func *fb = b;

 if (fb->start <= fa->start && fa->end < fb->end)
  return 0;

 if (fa->start > fb->start)
  return 1;
 else
  return -1;
}
