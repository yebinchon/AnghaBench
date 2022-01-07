
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct fuse_conn {scalar_t__ writeback_cache; } ;
struct fuse_args_pages {int num_pages; int * pages; } ;
typedef scalar_t__ loff_t ;


 size_t PAGE_SHIFT ;
 int PAGE_SIZE ;
 int fuse_read_update_size (struct inode*,scalar_t__,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 scalar_t__ page_offset (int ) ;
 int zero_user_segment (int ,size_t,int) ;

__attribute__((used)) static void fuse_short_read(struct inode *inode, u64 attr_ver, size_t num_read,
       struct fuse_args_pages *ap)
{
 struct fuse_conn *fc = get_fuse_conn(inode);

 if (fc->writeback_cache) {





  int i;
  int start_idx = num_read >> PAGE_SHIFT;
  size_t off = num_read & (PAGE_SIZE - 1);

  for (i = start_idx; i < ap->num_pages; i++) {
   zero_user_segment(ap->pages[i], off, PAGE_SIZE);
   off = 0;
  }
 } else {
  loff_t pos = page_offset(ap->pages[0]) + num_read;
  fuse_read_update_size(inode, pos, attr_ver);
 }
}
