
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct TYPE_4__ {int mft_no; } ;
typedef TYPE_1__ ntfs_inode ;


 TYPE_1__* NTFS_I (struct inode*) ;
 int __ntfs_init_inode (int ,TYPE_1__*) ;
 int ntfs_debug (char*) ;

__attribute__((used)) static inline void ntfs_init_big_inode(struct inode *vi)
{
 ntfs_inode *ni = NTFS_I(vi);

 ntfs_debug("Entering.");
 __ntfs_init_inode(vi->i_sb, ni);
 ni->mft_no = vi->i_ino;
}
