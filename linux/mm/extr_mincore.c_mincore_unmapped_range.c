
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_walk {int private; int vma; } ;


 scalar_t__ __mincore_unmapped_range (unsigned long,unsigned long,int ,int ) ;

__attribute__((used)) static int mincore_unmapped_range(unsigned long addr, unsigned long end,
       struct mm_walk *walk)
{
 walk->private += __mincore_unmapped_range(addr, end,
        walk->vma, walk->private);
 return 0;
}
