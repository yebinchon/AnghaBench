
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap_page {int write_count; } ;
struct inode {int i_mapping; } ;
struct bio_vec {int bv_page; } ;


 int ASSERT (int) ;
 int EIO ;
 scalar_t__ PAGE_SIZE ;
 int SetPageError (int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int end_page_writeback (int ) ;
 scalar_t__ i_blocksize (struct inode*) ;
 int mapping_set_error (int ,int ) ;
 struct iomap_page* to_iomap_page (int ) ;

__attribute__((used)) static void
xfs_finish_page_writeback(
 struct inode *inode,
 struct bio_vec *bvec,
 int error)
{
 struct iomap_page *iop = to_iomap_page(bvec->bv_page);

 if (error) {
  SetPageError(bvec->bv_page);
  mapping_set_error(inode->i_mapping, -EIO);
 }

 ASSERT(iop || i_blocksize(inode) == PAGE_SIZE);
 ASSERT(!iop || atomic_read(&iop->write_count) > 0);

 if (!iop || atomic_dec_and_test(&iop->write_count))
  end_page_writeback(bvec->bv_page);
}
