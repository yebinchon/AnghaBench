
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ s64 ;
typedef int pgoff_t ;
struct TYPE_5__ {scalar_t__ nr_clusters; int lcnbmp_lock; TYPE_1__* lcnbmp_ino; } ;
typedef TYPE_2__ ntfs_volume ;
struct TYPE_4__ {struct address_space* i_mapping; } ;


 int BITS_PER_BYTE ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ bitmap_weight (unsigned long*,int) ;
 int down_read (int *) ;
 unsigned long* kmap_atomic (struct page*) ;
 int kunmap_atomic (unsigned long*) ;
 int ntfs_debug (char*,...) ;
 int put_page (struct page*) ;
 struct page* read_mapping_page (struct address_space*,int,int *) ;
 int up_read (int *) ;

__attribute__((used)) static s64 get_nr_free_clusters(ntfs_volume *vol)
{
 s64 nr_free = vol->nr_clusters;
 struct address_space *mapping = vol->lcnbmp_ino->i_mapping;
 struct page *page;
 pgoff_t index, max_index;

 ntfs_debug("Entering.");

 down_read(&vol->lcnbmp_lock);





 max_index = (((vol->nr_clusters + 7) >> 3) + PAGE_SIZE - 1) >>
   PAGE_SHIFT;

 ntfs_debug("Reading $Bitmap, max_index = 0x%lx, max_size = 0x%lx.",
   max_index, PAGE_SIZE / 4);
 for (index = 0; index < max_index; index++) {
  unsigned long *kaddr;





  page = read_mapping_page(mapping, index, ((void*)0));

  if (IS_ERR(page)) {
   ntfs_debug("read_mapping_page() error. Skipping "
     "page (index 0x%lx).", index);
   nr_free -= PAGE_SIZE * 8;
   continue;
  }
  kaddr = kmap_atomic(page);







  nr_free -= bitmap_weight(kaddr,
     PAGE_SIZE * BITS_PER_BYTE);
  kunmap_atomic(kaddr);
  put_page(page);
 }
 ntfs_debug("Finished reading $Bitmap, last index = 0x%lx.", index - 1);




 if (vol->nr_clusters & 63)
  nr_free += 64 - (vol->nr_clusters & 63);
 up_read(&vol->lcnbmp_lock);

 if (nr_free < 0)
  nr_free = 0;
 ntfs_debug("Exiting.");
 return nr_free;
}
