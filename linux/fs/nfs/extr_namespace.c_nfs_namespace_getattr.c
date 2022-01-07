
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 TYPE_1__* NFS_FH (int ) ;
 int d_inode (int ) ;
 int generic_fillattr (int ,struct kstat*) ;
 int nfs_getattr (struct path const*,struct kstat*,int ,unsigned int) ;

__attribute__((used)) static int
nfs_namespace_getattr(const struct path *path, struct kstat *stat,
   u32 request_mask, unsigned int query_flags)
{
 if (NFS_FH(d_inode(path->dentry))->size != 0)
  return nfs_getattr(path, stat, request_mask, query_flags);
 generic_fillattr(d_inode(path->dentry), stat);
 return 0;
}
