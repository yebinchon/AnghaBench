
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nfs_fattr {int valid; int fsid; } ;
struct TYPE_2__ {int fsid; } ;


 int NFS_ATTR_FATTR_MOUNTPOINT ;
 TYPE_1__* NFS_SB (struct super_block*) ;
 int nfs_fsid_equal (int *,int *) ;

__attribute__((used)) static inline void nfs_attr_check_mountpoint(struct super_block *parent, struct nfs_fattr *fattr)
{
 if (!nfs_fsid_equal(&NFS_SB(parent)->fsid, &fattr->fsid))
  fattr->valid |= NFS_ATTR_FATTR_MOUNTPOINT;
}
