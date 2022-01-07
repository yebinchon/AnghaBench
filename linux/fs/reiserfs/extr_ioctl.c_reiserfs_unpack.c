
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {unsigned long i_size; TYPE_1__* i_sb; struct address_space* i_mapping; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_7__ {int i_flags; } ;
struct TYPE_6__ {unsigned long s_blocksize; } ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 TYPE_5__* REISERFS_I (struct inode*) ;
 int __reiserfs_write_begin (struct page*,unsigned long,int ) ;
 int flush_dcache_page (struct page*) ;
 struct page* grab_cache_page (struct address_space*,int) ;
 int i_nopack_mask ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int put_page (struct page*) ;
 int reiserfs_commit_write (int *,struct page*,unsigned long,unsigned long) ;
 int reiserfs_write_lock (TYPE_1__*) ;
 int reiserfs_write_lock_nested (TYPE_1__*,int) ;
 int reiserfs_write_unlock (TYPE_1__*) ;
 int reiserfs_write_unlock_nested (TYPE_1__*) ;
 int unlock_page (struct page*) ;

int reiserfs_unpack(struct inode *inode, struct file *filp)
{
 int retval = 0;
 int index;
 struct page *page;
 struct address_space *mapping;
 unsigned long write_from;
 unsigned long blocksize = inode->i_sb->s_blocksize;

 if (inode->i_size == 0) {
  REISERFS_I(inode)->i_flags |= i_nopack_mask;
  return 0;
 }

 if (REISERFS_I(inode)->i_flags & i_nopack_mask) {
  return 0;
 }


{
 int depth = reiserfs_write_unlock_nested(inode->i_sb);
 inode_lock(inode);
 reiserfs_write_lock_nested(inode->i_sb, depth);
}

 reiserfs_write_lock(inode->i_sb);

 write_from = inode->i_size & (blocksize - 1);

 if (write_from == 0) {
  REISERFS_I(inode)->i_flags |= i_nopack_mask;
  goto out;
 }






 index = inode->i_size >> PAGE_SHIFT;
 mapping = inode->i_mapping;
 page = grab_cache_page(mapping, index);
 retval = -ENOMEM;
 if (!page) {
  goto out;
 }
 retval = __reiserfs_write_begin(page, write_from, 0);
 if (retval)
  goto out_unlock;


 flush_dcache_page(page);
 retval = reiserfs_commit_write(((void*)0), page, write_from, write_from);
 REISERFS_I(inode)->i_flags |= i_nopack_mask;

out_unlock:
 unlock_page(page);
 put_page(page);

out:
 inode_unlock(inode);
 reiserfs_write_unlock(inode->i_sb);
 return retval;
}
