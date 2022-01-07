
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dnode_of_data {scalar_t__ ofs_in_node; int node_page; } ;
typedef scalar_t__ pgoff_t ;


 scalar_t__ ADDRS_PER_PAGE (int ,struct inode*) ;
 int ENOENT ;
 int F2FS_I_SB (struct inode*) ;
 int LOOKUP_NODE ;
 int f2fs_bug_on (int ,int) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,scalar_t__,int ) ;
 scalar_t__ f2fs_get_next_page_offset (struct dnode_of_data*,scalar_t__) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_truncate_data_blocks_range (struct dnode_of_data*,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;

int f2fs_truncate_hole(struct inode *inode, pgoff_t pg_start, pgoff_t pg_end)
{
 int err;

 while (pg_start < pg_end) {
  struct dnode_of_data dn;
  pgoff_t end_offset, count;

  set_new_dnode(&dn, inode, ((void*)0), ((void*)0), 0);
  err = f2fs_get_dnode_of_data(&dn, pg_start, LOOKUP_NODE);
  if (err) {
   if (err == -ENOENT) {
    pg_start = f2fs_get_next_page_offset(&dn,
        pg_start);
    continue;
   }
   return err;
  }

  end_offset = ADDRS_PER_PAGE(dn.node_page, inode);
  count = min(end_offset - dn.ofs_in_node, pg_end - pg_start);

  f2fs_bug_on(F2FS_I_SB(inode), count == 0 || count > end_offset);

  f2fs_truncate_data_blocks_range(&dn, count);
  f2fs_put_dnode(&dn);

  pg_start += count;
 }
 return 0;
}
