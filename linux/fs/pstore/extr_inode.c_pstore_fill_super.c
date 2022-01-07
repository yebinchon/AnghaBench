
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; int s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; int s_maxbytes; } ;
struct inode {int i_mode; int * i_fop; int * i_op; } ;


 int ENOMEM ;
 int MAX_LFS_FILESIZE ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PSTOREFS_MAGIC ;
 int S_IFDIR ;
 int d_make_root (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int parse_options (void*) ;
 int pstore_dir_inode_operations ;
 struct inode* pstore_get_inode (struct super_block*) ;
 int pstore_get_records (int ) ;
 int pstore_ops ;
 struct super_block* pstore_sb ;
 int simple_dir_operations ;

__attribute__((used)) static int pstore_fill_super(struct super_block *sb, void *data, int silent)
{
 struct inode *inode;

 pstore_sb = sb;

 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = PSTOREFS_MAGIC;
 sb->s_op = &pstore_ops;
 sb->s_time_gran = 1;

 parse_options(data);

 inode = pstore_get_inode(sb);
 if (inode) {
  inode->i_mode = S_IFDIR | 0750;
  inode->i_op = &pstore_dir_inode_operations;
  inode->i_fop = &simple_dir_operations;
  inc_nlink(inode);
 }
 sb->s_root = d_make_root(inode);
 if (!sb->s_root)
  return -ENOMEM;

 pstore_get_records(0);

 return 0;
}
