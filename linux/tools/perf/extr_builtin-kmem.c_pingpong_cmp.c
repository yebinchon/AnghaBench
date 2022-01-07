
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_stat {scalar_t__ pingpong; } ;



__attribute__((used)) static int pingpong_cmp(void *a, void *b)
{
 struct alloc_stat *l = a;
 struct alloc_stat *r = b;

 if (l->pingpong < r->pingpong)
  return -1;
 else if (l->pingpong > r->pingpong)
  return 1;
 return 0;
}
