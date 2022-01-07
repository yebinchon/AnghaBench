
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int nfs_client; } ;


 int FMODE_WRITE ;
 TYPE_1__* NFS_SERVER (struct inode*) ;
 int nfs4_check_delegation (struct inode*,int ) ;
 int nfs4_has_session (int ) ;
 int nfs4_inode_return_delegation (struct inode*) ;

int nfs4_inode_make_writeable(struct inode *inode)
{
 if (!nfs4_has_session(NFS_SERVER(inode)->nfs_client) ||
     !nfs4_check_delegation(inode, FMODE_WRITE))
  return nfs4_inode_return_delegation(inode);
 return 0;
}
