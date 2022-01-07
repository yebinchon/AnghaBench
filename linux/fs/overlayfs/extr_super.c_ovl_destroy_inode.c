
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_inode {int lowerdata; int lower; int __upperdentry; } ;
struct inode {int i_mode; } ;


 struct ovl_inode* OVL_I (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int dput (int ) ;
 int iput (int ) ;
 int ovl_dir_cache_free (struct inode*) ;

__attribute__((used)) static void ovl_destroy_inode(struct inode *inode)
{
 struct ovl_inode *oi = OVL_I(inode);

 dput(oi->__upperdentry);
 iput(oi->lower);
 if (S_ISDIR(inode->i_mode))
  ovl_dir_cache_free(inode);
 else
  iput(oi->lowerdata);
}
