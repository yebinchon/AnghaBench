
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcov {unsigned long* area; unsigned long size; } ;


 int PAGE_SIZE ;
 int READ_ONCE (unsigned long) ;

__attribute__((used)) static void kcov_fault_in_area(struct kcov *kcov)
{
 unsigned long stride = PAGE_SIZE / sizeof(unsigned long);
 unsigned long *area = kcov->area;
 unsigned long offset;

 for (offset = 0; offset < kcov->size; offset += stride)
  READ_ONCE(area[offset]);
}
