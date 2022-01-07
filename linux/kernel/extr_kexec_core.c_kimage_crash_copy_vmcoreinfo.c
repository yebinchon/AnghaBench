
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kimage {scalar_t__ type; void* vmcoreinfo_data_copy; } ;


 int ENOMEM ;
 scalar_t__ KEXEC_TYPE_CRASH ;
 int PAGE_KERNEL ;
 int VM_MAP ;
 int crash_update_vmcoreinfo_safecopy (void*) ;
 struct page* kimage_alloc_control_pages (struct kimage*,int ) ;
 int pr_warn (char*) ;
 void* vmap (struct page**,int,int ,int ) ;

int kimage_crash_copy_vmcoreinfo(struct kimage *image)
{
 struct page *vmcoreinfo_page;
 void *safecopy;

 if (image->type != KEXEC_TYPE_CRASH)
  return 0;
 vmcoreinfo_page = kimage_alloc_control_pages(image, 0);
 if (!vmcoreinfo_page) {
  pr_warn("Could not allocate vmcoreinfo buffer\n");
  return -ENOMEM;
 }
 safecopy = vmap(&vmcoreinfo_page, 1, VM_MAP, PAGE_KERNEL);
 if (!safecopy) {
  pr_warn("Could not vmap vmcoreinfo buffer\n");
  return -ENOMEM;
 }

 image->vmcoreinfo_data_copy = safecopy;
 crash_update_vmcoreinfo_safecopy(safecopy);

 return 0;
}
