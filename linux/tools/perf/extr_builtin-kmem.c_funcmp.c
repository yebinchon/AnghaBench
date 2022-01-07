
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_func {scalar_t__ start; } ;



__attribute__((used)) static int funcmp(const void *a, const void *b)
{
 const struct alloc_func *fa = a;
 const struct alloc_func *fb = b;

 if (fa->start > fb->start)
  return 1;
 else
  return -1;
}
