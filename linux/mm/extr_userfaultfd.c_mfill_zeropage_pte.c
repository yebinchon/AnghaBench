
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; int vm_page_prot; } ;
struct mm_struct {int dummy; } ;
struct inode {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef scalar_t__ pgoff_t ;
struct TYPE_2__ {struct inode* f_inode; } ;


 scalar_t__ DIV_ROUND_UP (int ,int ) ;
 int EEXIST ;
 int EFAULT ;
 int PAGE_SIZE ;
 int i_size_read (struct inode*) ;
 scalar_t__ linear_page_index (struct vm_area_struct*,unsigned long) ;
 int my_zero_pfn (unsigned long) ;
 int pfn_pte (int ,int ) ;
 int pte_mkspecial (int ) ;
 int pte_none (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_unmap_unlock (int *,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 scalar_t__ unlikely (int) ;
 int update_mmu_cache (struct vm_area_struct*,unsigned long,int *) ;

__attribute__((used)) static int mfill_zeropage_pte(struct mm_struct *dst_mm,
         pmd_t *dst_pmd,
         struct vm_area_struct *dst_vma,
         unsigned long dst_addr)
{
 pte_t _dst_pte, *dst_pte;
 spinlock_t *ptl;
 int ret;
 pgoff_t offset, max_off;
 struct inode *inode;

 _dst_pte = pte_mkspecial(pfn_pte(my_zero_pfn(dst_addr),
      dst_vma->vm_page_prot));
 dst_pte = pte_offset_map_lock(dst_mm, dst_pmd, dst_addr, &ptl);
 if (dst_vma->vm_file) {

  inode = dst_vma->vm_file->f_inode;
  offset = linear_page_index(dst_vma, dst_addr);
  max_off = DIV_ROUND_UP(i_size_read(inode), PAGE_SIZE);
  ret = -EFAULT;
  if (unlikely(offset >= max_off))
   goto out_unlock;
 }
 ret = -EEXIST;
 if (!pte_none(*dst_pte))
  goto out_unlock;
 set_pte_at(dst_mm, dst_addr, dst_pte, _dst_pte);

 update_mmu_cache(dst_vma, dst_addr, dst_pte);
 ret = 0;
out_unlock:
 pte_unmap_unlock(dst_pte, ptl);
 return ret;
}
