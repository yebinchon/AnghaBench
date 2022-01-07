
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; long vm_pgoff; struct vm_area_struct* vm_next; struct anon_vma* anon_vma; struct file* vm_file; struct mm_struct* vm_mm; } ;
struct rb_root_cached {int dummy; } ;
struct mm_struct {scalar_t__ highest_vm_end; int map_count; } ;
struct file {struct address_space* f_mapping; } ;
struct anon_vma {int dummy; } ;
struct address_space {struct rb_root_cached i_mmap; } ;
typedef long pgoff_t ;


 unsigned long PAGE_SHIFT ;
 int VM_WARN_ON (int) ;
 int __insert_vm_struct (struct mm_struct*,struct vm_area_struct*) ;
 int __remove_shared_vm_struct (struct vm_area_struct*,struct file*,struct address_space*) ;
 int __vma_link_file (struct vm_area_struct*) ;
 int __vma_unlink_common (struct mm_struct*,struct vm_area_struct*,int *,int,struct vm_area_struct*) ;
 int __vma_unlink_prev (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*) ;
 int anon_vma_clone (struct vm_area_struct*,struct vm_area_struct*) ;
 int anon_vma_interval_tree_post_update_vma (struct vm_area_struct*) ;
 int anon_vma_interval_tree_pre_update_vma (struct vm_area_struct*) ;
 int anon_vma_lock_write (struct anon_vma*) ;
 int anon_vma_merge (struct vm_area_struct*,struct vm_area_struct*) ;
 int anon_vma_unlock_write (struct anon_vma*) ;
 int flush_dcache_mmap_lock (struct address_space*) ;
 int flush_dcache_mmap_unlock (struct address_space*) ;
 int fput (struct file*) ;
 int i_mmap_lock_write (struct address_space*) ;
 int i_mmap_unlock_write (struct address_space*) ;
 int mpol_put (int ) ;
 int swap (struct vm_area_struct*,struct vm_area_struct*) ;
 int uprobe_mmap (struct vm_area_struct*) ;
 int uprobe_munmap (struct vm_area_struct*,unsigned long,unsigned long) ;
 int validate_mm (struct mm_struct*) ;
 int vm_area_free (struct vm_area_struct*) ;
 scalar_t__ vm_end_gap (struct vm_area_struct*) ;
 int vma_adjust_trans_huge (struct vm_area_struct*,unsigned long,unsigned long,long) ;
 int vma_gap_update (struct vm_area_struct*) ;
 int vma_interval_tree_insert (struct vm_area_struct*,struct rb_root_cached*) ;
 int vma_interval_tree_remove (struct vm_area_struct*,struct rb_root_cached*) ;
 int vma_policy (struct vm_area_struct*) ;

int __vma_adjust(struct vm_area_struct *vma, unsigned long start,
 unsigned long end, pgoff_t pgoff, struct vm_area_struct *insert,
 struct vm_area_struct *expand)
{
 struct mm_struct *mm = vma->vm_mm;
 struct vm_area_struct *next = vma->vm_next, *orig_vma = vma;
 struct address_space *mapping = ((void*)0);
 struct rb_root_cached *root = ((void*)0);
 struct anon_vma *anon_vma = ((void*)0);
 struct file *file = vma->vm_file;
 bool start_changed = 0, end_changed = 0;
 long adjust_next = 0;
 int remove_next = 0;

 if (next && !insert) {
  struct vm_area_struct *exporter = ((void*)0), *importer = ((void*)0);

  if (end >= next->vm_end) {






   if (next == expand) {




    VM_WARN_ON(end != next->vm_end);





    remove_next = 3;
    VM_WARN_ON(file != next->vm_file);
    swap(vma, next);
   } else {
    VM_WARN_ON(expand != vma);




    remove_next = 1 + (end > next->vm_end);
    VM_WARN_ON(remove_next == 2 &&
        end != next->vm_next->vm_end);
    VM_WARN_ON(remove_next == 1 &&
        end != next->vm_end);

    end = next->vm_end;
   }

   exporter = next;
   importer = vma;





   if (remove_next == 2 && !next->anon_vma)
    exporter = next->vm_next;

  } else if (end > next->vm_start) {




   adjust_next = (end - next->vm_start) >> PAGE_SHIFT;
   exporter = next;
   importer = vma;
   VM_WARN_ON(expand != importer);
  } else if (end < vma->vm_end) {





   adjust_next = -((vma->vm_end - end) >> PAGE_SHIFT);
   exporter = vma;
   importer = next;
   VM_WARN_ON(expand != importer);
  }






  if (exporter && exporter->anon_vma && !importer->anon_vma) {
   int error;

   importer->anon_vma = exporter->anon_vma;
   error = anon_vma_clone(importer, exporter);
   if (error)
    return error;
  }
 }
again:
 vma_adjust_trans_huge(orig_vma, start, end, adjust_next);

 if (file) {
  mapping = file->f_mapping;
  root = &mapping->i_mmap;
  uprobe_munmap(vma, vma->vm_start, vma->vm_end);

  if (adjust_next)
   uprobe_munmap(next, next->vm_start, next->vm_end);

  i_mmap_lock_write(mapping);
  if (insert) {






   __vma_link_file(insert);
  }
 }

 anon_vma = vma->anon_vma;
 if (!anon_vma && adjust_next)
  anon_vma = next->anon_vma;
 if (anon_vma) {
  VM_WARN_ON(adjust_next && next->anon_vma &&
      anon_vma != next->anon_vma);
  anon_vma_lock_write(anon_vma);
  anon_vma_interval_tree_pre_update_vma(vma);
  if (adjust_next)
   anon_vma_interval_tree_pre_update_vma(next);
 }

 if (root) {
  flush_dcache_mmap_lock(mapping);
  vma_interval_tree_remove(vma, root);
  if (adjust_next)
   vma_interval_tree_remove(next, root);
 }

 if (start != vma->vm_start) {
  vma->vm_start = start;
  start_changed = 1;
 }
 if (end != vma->vm_end) {
  vma->vm_end = end;
  end_changed = 1;
 }
 vma->vm_pgoff = pgoff;
 if (adjust_next) {
  next->vm_start += adjust_next << PAGE_SHIFT;
  next->vm_pgoff += adjust_next;
 }

 if (root) {
  if (adjust_next)
   vma_interval_tree_insert(next, root);
  vma_interval_tree_insert(vma, root);
  flush_dcache_mmap_unlock(mapping);
 }

 if (remove_next) {




  if (remove_next != 3)
   __vma_unlink_prev(mm, next, vma);
  else
   __vma_unlink_common(mm, next, ((void*)0), 0, vma);
  if (file)
   __remove_shared_vm_struct(next, file, mapping);
 } else if (insert) {





  __insert_vm_struct(mm, insert);
 } else {
  if (start_changed)
   vma_gap_update(vma);
  if (end_changed) {
   if (!next)
    mm->highest_vm_end = vm_end_gap(vma);
   else if (!adjust_next)
    vma_gap_update(next);
  }
 }

 if (anon_vma) {
  anon_vma_interval_tree_post_update_vma(vma);
  if (adjust_next)
   anon_vma_interval_tree_post_update_vma(next);
  anon_vma_unlock_write(anon_vma);
 }
 if (mapping)
  i_mmap_unlock_write(mapping);

 if (root) {
  uprobe_mmap(vma);

  if (adjust_next)
   uprobe_mmap(next);
 }

 if (remove_next) {
  if (file) {
   uprobe_munmap(next, next->vm_start, next->vm_end);
   fput(file);
  }
  if (next->anon_vma)
   anon_vma_merge(vma, next);
  mm->map_count--;
  mpol_put(vma_policy(next));
  vm_area_free(next);





  if (remove_next != 3) {






   next = vma->vm_next;
  } else {
   next = vma;
  }
  if (remove_next == 2) {
   remove_next = 1;
   end = next->vm_end;
   goto again;
  }
  else if (next)
   vma_gap_update(next);
  else {
   VM_WARN_ON(mm->highest_vm_end != vm_end_gap(vma));
  }
 }
 if (insert && file)
  uprobe_mmap(insert);

 validate_mm(mm);

 return 0;
}
