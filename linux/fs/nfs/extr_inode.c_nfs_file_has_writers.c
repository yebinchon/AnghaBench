
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct nfs_inode {int open_files; struct inode vfs_inode; } ;


 int S_ISREG (int ) ;
 int inode_is_open_for_write (struct inode*) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static bool nfs_file_has_writers(struct nfs_inode *nfsi)
{
 struct inode *inode = &nfsi->vfs_inode;

 if (!S_ISREG(inode->i_mode))
  return 0;
 if (list_empty(&nfsi->open_files))
  return 0;
 return inode_is_open_for_write(inode);
}
