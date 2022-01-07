
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_region {int vm_flags; unsigned long vm_start; unsigned long vm_end; unsigned long vm_top; } ;
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; scalar_t__ vm_file; TYPE_1__* vm_region; } ;
typedef unsigned long loff_t ;
struct TYPE_4__ {int comm; int pid; } ;
struct TYPE_3__ {int vm_end; int vm_top; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 unsigned long NOMMU_MAP_DIRECT ;
 unsigned long PAGE_SHIFT ;
 int VM_MAPPED_COPY ;
 int VM_MAYSHARE ;
 void* alloc_pages_exact (unsigned long,int ) ;
 int atomic_long_add (unsigned long,int *) ;
 int call_mmap (scalar_t__,struct vm_area_struct*) ;
 TYPE_2__* current ;
 int free_page_series (unsigned long,unsigned long) ;
 int get_order (unsigned long) ;
 int kernel_read (scalar_t__,void*,unsigned long,unsigned long*) ;
 int memset (void*,int ,unsigned long) ;
 int mmap_pages_allocated ;
 int pr_err (char*,unsigned long,int ,int ) ;
 int show_free_areas (int ,int *) ;
 unsigned long sysctl_nr_trim_pages ;
 int vma_set_anonymous (struct vm_area_struct*) ;

__attribute__((used)) static int do_mmap_private(struct vm_area_struct *vma,
      struct vm_region *region,
      unsigned long len,
      unsigned long capabilities)
{
 unsigned long total, point;
 void *base;
 int ret, order;





 if (capabilities & NOMMU_MAP_DIRECT) {
  ret = call_mmap(vma->vm_file, vma);
  if (ret == 0) {

   BUG_ON(!(vma->vm_flags & VM_MAYSHARE));
   vma->vm_region->vm_top = vma->vm_region->vm_end;
   return 0;
  }
  if (ret != -ENOSYS)
   return ret;




 }






 order = get_order(len);
 total = 1 << order;
 point = len >> PAGE_SHIFT;


 if (sysctl_nr_trim_pages && total - point >= sysctl_nr_trim_pages)
  total = point;

 base = alloc_pages_exact(total << PAGE_SHIFT, GFP_KERNEL);
 if (!base)
  goto enomem;

 atomic_long_add(total, &mmap_pages_allocated);

 region->vm_flags = vma->vm_flags |= VM_MAPPED_COPY;
 region->vm_start = (unsigned long) base;
 region->vm_end = region->vm_start + len;
 region->vm_top = region->vm_start + (total << PAGE_SHIFT);

 vma->vm_start = region->vm_start;
 vma->vm_end = region->vm_start + len;

 if (vma->vm_file) {

  loff_t fpos;

  fpos = vma->vm_pgoff;
  fpos <<= PAGE_SHIFT;

  ret = kernel_read(vma->vm_file, base, len, &fpos);
  if (ret < 0)
   goto error_free;


  if (ret < len)
   memset(base + ret, 0, len - ret);

 } else {
  vma_set_anonymous(vma);
 }

 return 0;

error_free:
 free_page_series(region->vm_start, region->vm_top);
 region->vm_start = vma->vm_start = 0;
 region->vm_end = vma->vm_end = 0;
 region->vm_top = 0;
 return ret;

enomem:
 pr_err("Allocation of length %lu from process %d (%s) failed\n",
        len, current->pid, current->comm);
 show_free_areas(0, ((void*)0));
 return -ENOMEM;
}
