
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {struct inode* b_inode; } ;
struct inode {int i_ino; int i_sb; } ;


 int EINVAL ;
 int EIO ;
 int __nilfs_error (int ,char const*,char*,int ) ;

__attribute__((used)) static int nilfs_bmap_convert_error(struct nilfs_bmap *bmap,
         const char *fname, int err)
{
 struct inode *inode = bmap->b_inode;

 if (err == -EINVAL) {
  __nilfs_error(inode->i_sb, fname,
         "broken bmap (inode number=%lu)", inode->i_ino);
  err = -EIO;
 }
 return err;
}
