
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int i_size; int i_mode; } ;
struct TYPE_2__ {int ra_pages; } ;
struct file {int f_lock; int f_mode; TYPE_1__ f_ra; struct address_space* f_mapping; } ;
struct backing_dev_info {int ra_pages; } ;
struct address_space {int host; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int ESPIPE ;
 int FMODE_RANDOM ;
 scalar_t__ IS_DAX (struct inode*) ;
 scalar_t__ PAGE_MASK ;
 scalar_t__ PAGE_SHIFT ;
 int PAGE_SIZE ;






 scalar_t__ S_ISFIFO (int ) ;
 int WB_SYNC_NONE ;
 int __filemap_fdatawrite_range (struct address_space*,scalar_t__,scalar_t__,int ) ;
 struct inode* file_inode (struct file*) ;
 int force_page_cache_readahead (struct address_space*,struct file*,scalar_t__,unsigned long) ;
 struct backing_dev_info* inode_to_bdi (int ) ;
 int inode_write_congested (int ) ;
 unsigned long invalidate_mapping_pages (struct address_space*,scalar_t__,scalar_t__) ;
 int lru_add_drain () ;
 int lru_add_drain_all () ;
 struct backing_dev_info noop_backing_dev_info ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int generic_fadvise(struct file *file, loff_t offset, loff_t len, int advice)
{
 struct inode *inode;
 struct address_space *mapping;
 struct backing_dev_info *bdi;
 loff_t endbyte;
 pgoff_t start_index;
 pgoff_t end_index;
 unsigned long nrpages;

 inode = file_inode(file);
 if (S_ISFIFO(inode->i_mode))
  return -ESPIPE;

 mapping = file->f_mapping;
 if (!mapping || len < 0)
  return -EINVAL;

 bdi = inode_to_bdi(mapping->host);

 if (IS_DAX(inode) || (bdi == &noop_backing_dev_info)) {
  switch (advice) {
  case 131:
  case 130:
  case 129:
  case 128:
  case 132:
  case 133:

   break;
  default:
   return -EINVAL;
  }
  return 0;
 }






 endbyte = (u64)offset + (u64)len;
 if (!len || endbyte < len)
  endbyte = -1;
 else
  endbyte--;

 switch (advice) {
 case 131:
  file->f_ra.ra_pages = bdi->ra_pages;
  spin_lock(&file->f_lock);
  file->f_mode &= ~FMODE_RANDOM;
  spin_unlock(&file->f_lock);
  break;
 case 130:
  spin_lock(&file->f_lock);
  file->f_mode |= FMODE_RANDOM;
  spin_unlock(&file->f_lock);
  break;
 case 129:
  file->f_ra.ra_pages = bdi->ra_pages * 2;
  spin_lock(&file->f_lock);
  file->f_mode &= ~FMODE_RANDOM;
  spin_unlock(&file->f_lock);
  break;
 case 128:

  start_index = offset >> PAGE_SHIFT;
  end_index = endbyte >> PAGE_SHIFT;


  nrpages = end_index - start_index + 1;
  if (!nrpages)
   nrpages = ~0UL;





  force_page_cache_readahead(mapping, file, start_index, nrpages);
  break;
 case 132:
  break;
 case 133:
  if (!inode_write_congested(mapping->host))
   __filemap_fdatawrite_range(mapping, offset, endbyte,
         WB_SYNC_NONE);






  start_index = (offset+(PAGE_SIZE-1)) >> PAGE_SHIFT;
  end_index = (endbyte >> PAGE_SHIFT);







  if ((endbyte & ~PAGE_MASK) != ~PAGE_MASK &&
    endbyte != inode->i_size - 1) {





   if (end_index == 0)
    break;

   end_index--;
  }

  if (end_index >= start_index) {
   unsigned long count;
   lru_add_drain();

   count = invalidate_mapping_pages(mapping,
      start_index, end_index);







   if (count < (end_index - start_index + 1)) {
    lru_add_drain_all();
    invalidate_mapping_pages(mapping, start_index,
      end_index);
   }
  }
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
