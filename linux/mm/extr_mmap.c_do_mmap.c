
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_flags_t ;
struct vm_area_struct {unsigned long vm_start; } ;
struct mm_struct {scalar_t__ map_count; int def_flags; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_mode; TYPE_2__* f_op; int f_path; TYPE_1__* f_mapping; } ;
struct TYPE_6__ {int personality; struct mm_struct* mm; } ;
struct TYPE_5__ {unsigned long mmap_supported_flags; int mmap; } ;
struct TYPE_4__ {int host; } ;


 unsigned long EACCES ;
 unsigned long EAGAIN ;
 unsigned long EEXIST ;
 unsigned long EINVAL ;
 unsigned long ENODEV ;
 unsigned long ENOMEM ;
 unsigned long EOPNOTSUPP ;
 unsigned long EOVERFLOW ;
 unsigned long EPERM ;
 unsigned long ETXTBSY ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int IS_APPEND (struct inode*) ;
 int IS_ERR_VALUE (unsigned long) ;
 int IS_SWAPFILE (int ) ;
 unsigned long LEGACY_MAP_MASK ;
 unsigned long MAP_FIXED ;
 unsigned long MAP_FIXED_NOREPLACE ;
 unsigned long MAP_LOCKED ;
 unsigned long MAP_NONBLOCK ;
 unsigned long MAP_NORESERVE ;
 unsigned long MAP_POPULATE ;



 unsigned long MAP_TYPE ;
 scalar_t__ OVERCOMMIT_NEVER ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PROT_EXEC ;
 unsigned long PROT_READ ;
 unsigned long PROT_WRITE ;
 int READ_IMPLIES_EXEC ;
 int VM_EXEC ;
 int VM_GROWSDOWN ;
 int VM_GROWSUP ;
 int VM_LOCKED ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_MAYSHARE ;
 int VM_MAYWRITE ;
 int VM_NORESERVE ;
 int VM_SHARED ;
 int calc_vm_flag_bits (unsigned long) ;
 int calc_vm_prot_bits (unsigned long,int) ;
 int can_do_mlock () ;
 TYPE_3__* current ;
 int execute_only_pkey (struct mm_struct*) ;
 struct inode* file_inode (struct file*) ;
 int file_mmap_ok (struct file*,struct inode*,unsigned long,unsigned long) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 unsigned long get_unmapped_area (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 scalar_t__ is_file_hugepages (struct file*) ;
 int locks_verify_locked (struct file*) ;
 scalar_t__ mlock_future_check (struct mm_struct*,int,unsigned long) ;
 unsigned long mmap_region (struct file*,unsigned long,unsigned long,int,unsigned long,struct list_head*) ;
 scalar_t__ offset_in_page (unsigned long) ;
 scalar_t__ path_noexec (int *) ;
 unsigned long round_hint_to_min (unsigned long) ;
 scalar_t__ sysctl_max_map_count ;
 scalar_t__ sysctl_overcommit_memory ;

unsigned long do_mmap(struct file *file, unsigned long addr,
   unsigned long len, unsigned long prot,
   unsigned long flags, vm_flags_t vm_flags,
   unsigned long pgoff, unsigned long *populate,
   struct list_head *uf)
{
 struct mm_struct *mm = current->mm;
 int pkey = 0;

 *populate = 0;

 if (!len)
  return -EINVAL;







 if ((prot & PROT_READ) && (current->personality & READ_IMPLIES_EXEC))
  if (!(file && path_noexec(&file->f_path)))
   prot |= PROT_EXEC;


 if (flags & MAP_FIXED_NOREPLACE)
  flags |= MAP_FIXED;

 if (!(flags & MAP_FIXED))
  addr = round_hint_to_min(addr);


 len = PAGE_ALIGN(len);
 if (!len)
  return -ENOMEM;


 if ((pgoff + (len >> PAGE_SHIFT)) < pgoff)
  return -EOVERFLOW;


 if (mm->map_count > sysctl_max_map_count)
  return -ENOMEM;




 addr = get_unmapped_area(file, addr, len, pgoff, flags);
 if (offset_in_page(addr))
  return addr;

 if (flags & MAP_FIXED_NOREPLACE) {
  struct vm_area_struct *vma = find_vma(mm, addr);

  if (vma && vma->vm_start < addr + len)
   return -EEXIST;
 }

 if (prot == PROT_EXEC) {
  pkey = execute_only_pkey(mm);
  if (pkey < 0)
   pkey = 0;
 }





 vm_flags |= calc_vm_prot_bits(prot, pkey) | calc_vm_flag_bits(flags) |
   mm->def_flags | VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC;

 if (flags & MAP_LOCKED)
  if (!can_do_mlock())
   return -EPERM;

 if (mlock_future_check(mm, vm_flags, len))
  return -EAGAIN;

 if (file) {
  struct inode *inode = file_inode(file);
  unsigned long flags_mask;

  if (!file_mmap_ok(file, inode, pgoff, len))
   return -EOVERFLOW;

  flags_mask = LEGACY_MAP_MASK | file->f_op->mmap_supported_flags;

  switch (flags & MAP_TYPE) {
  case 129:







   flags &= LEGACY_MAP_MASK;

  case 128:
   if (flags & ~flags_mask)
    return -EOPNOTSUPP;
   if (prot & PROT_WRITE) {
    if (!(file->f_mode & FMODE_WRITE))
     return -EACCES;
    if (IS_SWAPFILE(file->f_mapping->host))
     return -ETXTBSY;
   }





   if (IS_APPEND(inode) && (file->f_mode & FMODE_WRITE))
    return -EACCES;




   if (locks_verify_locked(file))
    return -EAGAIN;

   vm_flags |= VM_SHARED | VM_MAYSHARE;
   if (!(file->f_mode & FMODE_WRITE))
    vm_flags &= ~(VM_MAYWRITE | VM_SHARED);


  case 130:
   if (!(file->f_mode & FMODE_READ))
    return -EACCES;
   if (path_noexec(&file->f_path)) {
    if (vm_flags & VM_EXEC)
     return -EPERM;
    vm_flags &= ~VM_MAYEXEC;
   }

   if (!file->f_op->mmap)
    return -ENODEV;
   if (vm_flags & (VM_GROWSDOWN|VM_GROWSUP))
    return -EINVAL;
   break;

  default:
   return -EINVAL;
  }
 } else {
  switch (flags & MAP_TYPE) {
  case 129:
   if (vm_flags & (VM_GROWSDOWN|VM_GROWSUP))
    return -EINVAL;



   pgoff = 0;
   vm_flags |= VM_SHARED | VM_MAYSHARE;
   break;
  case 130:



   pgoff = addr >> PAGE_SHIFT;
   break;
  default:
   return -EINVAL;
  }
 }





 if (flags & MAP_NORESERVE) {

  if (sysctl_overcommit_memory != OVERCOMMIT_NEVER)
   vm_flags |= VM_NORESERVE;


  if (file && is_file_hugepages(file))
   vm_flags |= VM_NORESERVE;
 }

 addr = mmap_region(file, addr, len, vm_flags, pgoff, uf);
 if (!IS_ERR_VALUE(addr) &&
     ((vm_flags & VM_LOCKED) ||
      (flags & (MAP_POPULATE | MAP_NONBLOCK)) == MAP_POPULATE))
  *populate = len;
 return addr;
}
