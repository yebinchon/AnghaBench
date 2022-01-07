
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int zap_page_range (struct vm_area_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static long madvise_dontneed_single_vma(struct vm_area_struct *vma,
     unsigned long start, unsigned long end)
{
 zap_page_range(vma, start, end - start);
 return 0;
}
