
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int version; } ;


 unsigned int LOOKUP_EXCL ;
 TYPE_1__* NFS_PROTO (struct inode*) ;

__attribute__((used)) static int nfs_is_exclusive_create(struct inode *dir, unsigned int flags)
{
 if (NFS_PROTO(dir)->version == 2)
  return 0;
 return flags & LOOKUP_EXCL;
}
