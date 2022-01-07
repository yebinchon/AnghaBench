
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {int cache_validity; } ;
struct TYPE_3__ {scalar_t__ (* have_delegation ) (struct inode*,int ) ;} ;


 int FMODE_READ ;
 TYPE_2__* NFS_I (struct inode*) ;
 int NFS_INO_REVAL_FORCED ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 scalar_t__ stub1 (struct inode*,int ) ;

__attribute__((used)) static inline int nfs_have_delegated_attributes(struct inode *inode)
{
 return NFS_PROTO(inode)->have_delegation(inode, FMODE_READ) &&
  !(NFS_I(inode)->cache_validity & NFS_INO_REVAL_FORCED);
}
