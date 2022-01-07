
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_str_ptr {int str; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int str_sort_by_content(const void *a1, const void *a2)
{
 const struct btf_str_ptr *p1 = a1;
 const struct btf_str_ptr *p2 = a2;

 return strcmp(p1->str, p2->str);
}
