
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef int pgoff_t ;


 int GFP_NOFS ;
 int PAGE_SIZE ;
 long bdev_dax_pgoff (struct block_device*,scalar_t__,int ,int *) ;
 int blkdev_issue_zeroout (struct block_device*,scalar_t__,unsigned int,int ,int ) ;
 long dax_direct_access (struct dax_device*,int ,int,void**,int *) ;
 int dax_flush (struct dax_device*,void*,unsigned int) ;
 scalar_t__ dax_range_is_aligned (struct block_device*,unsigned int,unsigned int) ;
 long dax_read_lock () ;
 int dax_read_unlock (long) ;
 int memset (void*,int ,unsigned int) ;

int __dax_zero_page_range(struct block_device *bdev,
  struct dax_device *dax_dev, sector_t sector,
  unsigned int offset, unsigned int size)
{
 if (dax_range_is_aligned(bdev, offset, size)) {
  sector_t start_sector = sector + (offset >> 9);

  return blkdev_issue_zeroout(bdev, start_sector,
    size >> 9, GFP_NOFS, 0);
 } else {
  pgoff_t pgoff;
  long rc, id;
  void *kaddr;

  rc = bdev_dax_pgoff(bdev, sector, PAGE_SIZE, &pgoff);
  if (rc)
   return rc;

  id = dax_read_lock();
  rc = dax_direct_access(dax_dev, pgoff, 1, &kaddr, ((void*)0));
  if (rc < 0) {
   dax_read_unlock(id);
   return rc;
  }
  memset(kaddr + offset, 0, size);
  dax_flush(dax_dev, kaddr + offset, size);
  dax_read_unlock(id);
 }
 return 0;
}
