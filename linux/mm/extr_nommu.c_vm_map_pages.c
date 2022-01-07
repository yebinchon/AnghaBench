
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int EINVAL ;

int vm_map_pages(struct vm_area_struct *vma, struct page **pages,
   unsigned long num)
{
 return -EINVAL;
}
