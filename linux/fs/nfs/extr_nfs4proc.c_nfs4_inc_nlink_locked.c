
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int cache_validity; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_OTHER ;
 int inc_nlink (struct inode*) ;

__attribute__((used)) static void
nfs4_inc_nlink_locked(struct inode *inode)
{
 NFS_I(inode)->cache_validity |= NFS_INO_INVALID_OTHER;
 inc_nlink(inode);
}
