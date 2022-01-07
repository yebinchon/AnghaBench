
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kimage {int* entry; int* last_entry; } ;
typedef int kimage_entry_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IND_INDIRECTION ;
 int KIMAGE_NO_DEST ;
 int PAGE_SIZE ;
 struct page* kimage_alloc_page (struct kimage*,int ,int ) ;
 int* page_address (struct page*) ;
 int virt_to_boot_phys (int*) ;

__attribute__((used)) static int kimage_add_entry(struct kimage *image, kimage_entry_t entry)
{
 if (*image->entry != 0)
  image->entry++;

 if (image->entry == image->last_entry) {
  kimage_entry_t *ind_page;
  struct page *page;

  page = kimage_alloc_page(image, GFP_KERNEL, KIMAGE_NO_DEST);
  if (!page)
   return -ENOMEM;

  ind_page = page_address(page);
  *image->entry = virt_to_boot_phys(ind_page) | IND_INDIRECTION;
  image->entry = ind_page;
  image->last_entry = ind_page +
          ((PAGE_SIZE/sizeof(kimage_entry_t)) - 1);
 }
 *image->entry = entry;
 image->entry++;
 *image->entry = 0;

 return 0;
}
