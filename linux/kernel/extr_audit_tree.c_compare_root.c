
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_root; } ;


 int d_backing_inode (int ) ;
 unsigned long inode_to_key (int ) ;

__attribute__((used)) static int compare_root(struct vfsmount *mnt, void *arg)
{
 return inode_to_key(d_backing_inode(mnt->mnt_root)) ==
        (unsigned long)arg;
}
