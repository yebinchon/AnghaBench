
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
 long madvise_behavior (struct vm_area_struct*,struct vm_area_struct**,unsigned long,unsigned long,int) ;
 long madvise_cold (struct vm_area_struct*,struct vm_area_struct**,unsigned long,unsigned long) ;
 long madvise_dontneed_free (struct vm_area_struct*,struct vm_area_struct**,unsigned long,unsigned long,int) ;
 long madvise_pageout (struct vm_area_struct*,struct vm_area_struct**,unsigned long,unsigned long) ;
 long madvise_remove (struct vm_area_struct*,struct vm_area_struct**,unsigned long,unsigned long) ;
 long madvise_willneed (struct vm_area_struct*,struct vm_area_struct**,unsigned long,unsigned long) ;

__attribute__((used)) static long
madvise_vma(struct vm_area_struct *vma, struct vm_area_struct **prev,
  unsigned long start, unsigned long end, int behavior)
{
 switch (behavior) {
 case 129:
  return madvise_remove(vma, prev, start, end);
 case 128:
  return madvise_willneed(vma, prev, start, end);
 case 133:
  return madvise_cold(vma, prev, start, end);
 case 130:
  return madvise_pageout(vma, prev, start, end);
 case 131:
 case 132:
  return madvise_dontneed_free(vma, prev, start, end, behavior);
 default:
  return madvise_behavior(vma, prev, start, end, behavior);
 }
}
