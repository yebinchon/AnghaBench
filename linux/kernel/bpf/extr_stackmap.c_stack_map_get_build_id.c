
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; } ;
struct page {int dummy; } ;
struct TYPE_4__ {scalar_t__* e_ident; scalar_t__ e_type; } ;
struct TYPE_3__ {int f_mapping; } ;
typedef TYPE_2__ Elf32_Ehdr ;


 int EFAULT ;
 int EINVAL ;
 size_t EI_CLASS ;
 scalar_t__ ELFCLASS32 ;
 scalar_t__ ELFCLASS64 ;
 int ELFMAG ;
 scalar_t__ ET_DYN ;
 scalar_t__ ET_EXEC ;
 int SELFMAG ;
 struct page* find_get_page (int ,int ) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 scalar_t__ memcmp (scalar_t__*,int ,int ) ;
 int put_page (struct page*) ;
 int stack_map_get_build_id_32 (void*,unsigned char*) ;
 int stack_map_get_build_id_64 (void*,unsigned char*) ;

__attribute__((used)) static int stack_map_get_build_id(struct vm_area_struct *vma,
      unsigned char *build_id)
{
 Elf32_Ehdr *ehdr;
 struct page *page;
 void *page_addr;
 int ret;


 if (!vma->vm_file)
  return -EINVAL;

 page = find_get_page(vma->vm_file->f_mapping, 0);
 if (!page)
  return -EFAULT;

 ret = -EINVAL;
 page_addr = kmap_atomic(page);
 ehdr = (Elf32_Ehdr *)page_addr;


 if (memcmp(ehdr->e_ident, ELFMAG, SELFMAG) != 0)
  goto out;


 if (ehdr->e_type != ET_EXEC && ehdr->e_type != ET_DYN)
  goto out;

 if (ehdr->e_ident[EI_CLASS] == ELFCLASS32)
  ret = stack_map_get_build_id_32(page_addr, build_id);
 else if (ehdr->e_ident[EI_CLASS] == ELFCLASS64)
  ret = stack_map_get_build_id_64(page_addr, build_id);
out:
 kunmap_atomic(page_addr);
 put_page(page);
 return ret;
}
