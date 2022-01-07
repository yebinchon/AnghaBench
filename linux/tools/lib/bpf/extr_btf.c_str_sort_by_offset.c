
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_str_ptr {scalar_t__ str; } ;



__attribute__((used)) static int str_sort_by_offset(const void *a1, const void *a2)
{
 const struct btf_str_ptr *p1 = a1;
 const struct btf_str_ptr *p2 = a2;

 if (p1->str != p2->str)
  return p1->str < p2->str ? -1 : 1;
 return 0;
}
