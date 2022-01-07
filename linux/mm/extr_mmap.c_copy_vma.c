
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; TYPE_1__* vm_ops; scalar_t__ vm_file; int vm_userfaultfd_ctx; int anon_vma; int vm_flags; struct mm_struct* vm_mm; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef unsigned long pgoff_t ;
struct TYPE_2__ {int (* open ) (struct vm_area_struct*) ;} ;


 unsigned long PAGE_SHIFT ;
 int VM_BUG_ON_VMA (int,struct vm_area_struct*) ;
 scalar_t__ anon_vma_clone (struct vm_area_struct*,struct vm_area_struct*) ;
 scalar_t__ find_vma_links (struct mm_struct*,unsigned long,unsigned long,struct vm_area_struct**,struct rb_node***,struct rb_node**) ;
 int get_file (scalar_t__) ;
 int mpol_put (int ) ;
 int stub1 (struct vm_area_struct*) ;
 scalar_t__ unlikely (int) ;
 struct vm_area_struct* vm_area_dup (struct vm_area_struct*) ;
 int vm_area_free (struct vm_area_struct*) ;
 scalar_t__ vma_dup_policy (struct vm_area_struct*,struct vm_area_struct*) ;
 scalar_t__ vma_is_anonymous (struct vm_area_struct*) ;
 int vma_link (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ;
 struct vm_area_struct* vma_merge (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,int ,int ,scalar_t__,unsigned long,int ,int ) ;
 int vma_policy (struct vm_area_struct*) ;

struct vm_area_struct *copy_vma(struct vm_area_struct **vmap,
 unsigned long addr, unsigned long len, pgoff_t pgoff,
 bool *need_rmap_locks)
{
 struct vm_area_struct *vma = *vmap;
 unsigned long vma_start = vma->vm_start;
 struct mm_struct *mm = vma->vm_mm;
 struct vm_area_struct *new_vma, *prev;
 struct rb_node **rb_link, *rb_parent;
 bool faulted_in_anon_vma = 1;





 if (unlikely(vma_is_anonymous(vma) && !vma->anon_vma)) {
  pgoff = addr >> PAGE_SHIFT;
  faulted_in_anon_vma = 0;
 }

 if (find_vma_links(mm, addr, addr + len, &prev, &rb_link, &rb_parent))
  return ((void*)0);
 new_vma = vma_merge(mm, prev, addr, addr + len, vma->vm_flags,
       vma->anon_vma, vma->vm_file, pgoff, vma_policy(vma),
       vma->vm_userfaultfd_ctx);
 if (new_vma) {



  if (unlikely(vma_start >= new_vma->vm_start &&
        vma_start < new_vma->vm_end)) {
   VM_BUG_ON_VMA(faulted_in_anon_vma, new_vma);
   *vmap = vma = new_vma;
  }
  *need_rmap_locks = (new_vma->vm_pgoff <= vma->vm_pgoff);
 } else {
  new_vma = vm_area_dup(vma);
  if (!new_vma)
   goto out;
  new_vma->vm_start = addr;
  new_vma->vm_end = addr + len;
  new_vma->vm_pgoff = pgoff;
  if (vma_dup_policy(vma, new_vma))
   goto out_free_vma;
  if (anon_vma_clone(new_vma, vma))
   goto out_free_mempol;
  if (new_vma->vm_file)
   get_file(new_vma->vm_file);
  if (new_vma->vm_ops && new_vma->vm_ops->open)
   new_vma->vm_ops->open(new_vma);
  vma_link(mm, new_vma, prev, rb_link, rb_parent);
  *need_rmap_locks = 0;
 }
 return new_vma;

out_free_mempol:
 mpol_put(vma_policy(new_vma));
out_free_vma:
 vm_area_free(new_vma);
out:
 return ((void*)0);
}
