
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_pgoff; unsigned long vm_start; } ;
struct mempolicy {int dummy; } ;


 int BUG_ON (int) ;
 int PAGE_SHIFT ;
 int interleave_nodes (struct mempolicy*) ;
 int offset_il_node (struct mempolicy*,unsigned long) ;

__attribute__((used)) static inline unsigned interleave_nid(struct mempolicy *pol,
   struct vm_area_struct *vma, unsigned long addr, int shift)
{
 if (vma) {
  unsigned long off;
  BUG_ON(shift < PAGE_SHIFT);
  off = vma->vm_pgoff >> (shift - PAGE_SHIFT);
  off += (addr - vma->vm_start) >> shift;
  return offset_il_node(pol, off);
 } else
  return interleave_nodes(pol);
}
