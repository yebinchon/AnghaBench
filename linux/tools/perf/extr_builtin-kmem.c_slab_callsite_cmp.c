
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_stat {scalar_t__ call_site; } ;



__attribute__((used)) static int slab_callsite_cmp(void *a, void *b)
{
 struct alloc_stat *l = a;
 struct alloc_stat *r = b;

 if (l->call_site < r->call_site)
  return -1;
 else if (l->call_site > r->call_site)
  return 1;
 return 0;
}
