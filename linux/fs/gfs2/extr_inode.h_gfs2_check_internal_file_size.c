
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int i_blkbits; } ;


 int BIT (int ) ;
 int EIO ;
 int GFS2_I (struct inode*) ;
 int gfs2_consist_inode (int ) ;
 int i_size_read (struct inode*) ;

__attribute__((used)) static inline int gfs2_check_internal_file_size(struct inode *inode,
      u64 minsize, u64 maxsize)
{
 u64 size = i_size_read(inode);
 if (size < minsize || size > maxsize)
  goto err;
 if (size & (BIT(inode->i_blkbits) - 1))
  goto err;
 return 0;
err:
 gfs2_consist_inode(GFS2_I(inode));
 return -EIO;
}
