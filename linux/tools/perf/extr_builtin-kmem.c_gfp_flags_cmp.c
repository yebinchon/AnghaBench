
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_stat {unsigned int gfp_flags; } ;



__attribute__((used)) static int gfp_flags_cmp(void *a, void *b)
{
 struct page_stat *l = a;
 struct page_stat *r = b;


 if (l->gfp_flags == -1U)
  return 0;

 if (l->gfp_flags < r->gfp_flags)
  return -1;
 else if (l->gfp_flags > r->gfp_flags)
  return 1;
 return 0;
}
