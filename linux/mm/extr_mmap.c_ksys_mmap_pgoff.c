
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int dummy; } ;
struct hstate {int dummy; } ;
struct file {int dummy; } ;


 unsigned long ALIGN (unsigned long,int ) ;
 unsigned long EBADF ;
 unsigned long EINVAL ;
 int HUGETLB_ANONHUGE_INODE ;
 int HUGETLB_ANON_FILE ;
 scalar_t__ IS_ERR (struct file*) ;
 unsigned long MAP_ANONYMOUS ;
 unsigned long MAP_DENYWRITE ;
 unsigned long MAP_EXECUTABLE ;
 unsigned long MAP_HUGETLB ;
 unsigned long MAP_HUGE_MASK ;
 unsigned long MAP_HUGE_SHIFT ;
 unsigned long PTR_ERR (struct file*) ;
 int VM_NORESERVE ;
 int audit_mmap_fd (unsigned long,unsigned long) ;
 struct file* fget (unsigned long) ;
 int fput (struct file*) ;
 struct hstate* hstate_file (struct file*) ;
 struct hstate* hstate_sizelog (unsigned long) ;
 int huge_page_size (struct hstate*) ;
 struct file* hugetlb_file_setup (int ,unsigned long,int ,struct user_struct**,int ,unsigned long) ;
 scalar_t__ is_file_hugepages (struct file*) ;
 scalar_t__ unlikely (int) ;
 unsigned long untagged_addr (unsigned long) ;
 unsigned long vm_mmap_pgoff (struct file*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

unsigned long ksys_mmap_pgoff(unsigned long addr, unsigned long len,
         unsigned long prot, unsigned long flags,
         unsigned long fd, unsigned long pgoff)
{
 struct file *file = ((void*)0);
 unsigned long retval;

 addr = untagged_addr(addr);

 if (!(flags & MAP_ANONYMOUS)) {
  audit_mmap_fd(fd, flags);
  file = fget(fd);
  if (!file)
   return -EBADF;
  if (is_file_hugepages(file))
   len = ALIGN(len, huge_page_size(hstate_file(file)));
  retval = -EINVAL;
  if (unlikely(flags & MAP_HUGETLB && !is_file_hugepages(file)))
   goto out_fput;
 } else if (flags & MAP_HUGETLB) {
  struct user_struct *user = ((void*)0);
  struct hstate *hs;

  hs = hstate_sizelog((flags >> MAP_HUGE_SHIFT) & MAP_HUGE_MASK);
  if (!hs)
   return -EINVAL;

  len = ALIGN(len, huge_page_size(hs));






  file = hugetlb_file_setup(HUGETLB_ANON_FILE, len,
    VM_NORESERVE,
    &user, HUGETLB_ANONHUGE_INODE,
    (flags >> MAP_HUGE_SHIFT) & MAP_HUGE_MASK);
  if (IS_ERR(file))
   return PTR_ERR(file);
 }

 flags &= ~(MAP_EXECUTABLE | MAP_DENYWRITE);

 retval = vm_mmap_pgoff(file, addr, len, prot, flags, pgoff);
out_fput:
 if (file)
  fput(file);
 return retval;
}
