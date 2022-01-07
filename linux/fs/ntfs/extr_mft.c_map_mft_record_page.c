
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int u64 ;
struct page {int dummy; } ;
struct inode {int i_mapping; } ;
struct TYPE_5__ {unsigned int mft_record_size_bits; unsigned int mft_record_size; int sb; struct inode* mft_ino; } ;
typedef TYPE_1__ ntfs_volume ;
struct TYPE_6__ {unsigned int mft_no; unsigned int page_ofs; struct page* page; TYPE_1__* vol; } ;
typedef TYPE_2__ ntfs_inode ;
typedef unsigned int loff_t ;
typedef int le32 ;
typedef void MFT_RECORD ;


 int BUG_ON (struct page*) ;
 int EIO ;
 int ENOENT ;
 struct page* ERR_PTR (int ) ;
 int IS_ERR (struct page*) ;
 int NVolSetErrors (TYPE_1__*) ;
 unsigned int PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 unsigned int i_size_read (struct inode*) ;
 scalar_t__ likely (int ) ;
 int ntfs_error (int ,char*,unsigned int) ;
 int ntfs_is_mft_recordp (int *) ;
 struct page* ntfs_map_page (int ,unsigned long) ;
 int ntfs_unmap_page (struct page*) ;
 void* page_address (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline MFT_RECORD *map_mft_record_page(ntfs_inode *ni)
{
 loff_t i_size;
 ntfs_volume *vol = ni->vol;
 struct inode *mft_vi = vol->mft_ino;
 struct page *page;
 unsigned long index, end_index;
 unsigned ofs;

 BUG_ON(ni->page);






 index = (u64)ni->mft_no << vol->mft_record_size_bits >>
   PAGE_SHIFT;
 ofs = (ni->mft_no << vol->mft_record_size_bits) & ~PAGE_MASK;

 i_size = i_size_read(mft_vi);

 end_index = i_size >> PAGE_SHIFT;


 if (unlikely(index >= end_index)) {
  if (index > end_index || (i_size & ~PAGE_MASK) < ofs +
    vol->mft_record_size) {
   page = ERR_PTR(-ENOENT);
   ntfs_error(vol->sb, "Attempt to read mft record 0x%lx, "
     "which is beyond the end of the mft.  "
     "This is probably a bug in the ntfs "
     "driver.", ni->mft_no);
   goto err_out;
  }
 }

 page = ntfs_map_page(mft_vi->i_mapping, index);
 if (!IS_ERR(page)) {

  if (likely(ntfs_is_mft_recordp((le32*)(page_address(page) +
    ofs)))) {
   ni->page = page;
   ni->page_ofs = ofs;
   return page_address(page) + ofs;
  }
  ntfs_error(vol->sb, "Mft record 0x%lx is corrupt.  "
    "Run chkdsk.", ni->mft_no);
  ntfs_unmap_page(page);
  page = ERR_PTR(-EIO);
  NVolSetErrors(vol);
 }
err_out:
 ni->page = ((void*)0);
 ni->page_ofs = 0;
 return (void*)page;
}
