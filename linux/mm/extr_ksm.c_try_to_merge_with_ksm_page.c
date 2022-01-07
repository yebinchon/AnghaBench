
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int anon_vma; } ;
struct rmap_item {int anon_vma; int address; struct mm_struct* mm; } ;
struct page {int dummy; } ;
struct mm_struct {int mmap_sem; } ;


 int EFAULT ;
 int down_read (int *) ;
 struct vm_area_struct* find_mergeable_vma (struct mm_struct*,int ) ;
 int get_anon_vma (int ) ;
 int remove_rmap_item_from_tree (struct rmap_item*) ;
 int try_to_merge_one_page (struct vm_area_struct*,struct page*,struct page*) ;
 int up_read (int *) ;

__attribute__((used)) static int try_to_merge_with_ksm_page(struct rmap_item *rmap_item,
          struct page *page, struct page *kpage)
{
 struct mm_struct *mm = rmap_item->mm;
 struct vm_area_struct *vma;
 int err = -EFAULT;

 down_read(&mm->mmap_sem);
 vma = find_mergeable_vma(mm, rmap_item->address);
 if (!vma)
  goto out;

 err = try_to_merge_one_page(vma, page, kpage);
 if (err)
  goto out;


 remove_rmap_item_from_tree(rmap_item);


 rmap_item->anon_vma = vma->anon_vma;
 get_anon_vma(vma->anon_vma);
out:
 up_read(&mm->mmap_sem);
 return err;
}
