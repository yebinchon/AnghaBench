
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {int dummy; } ;
struct kstat {int dummy; } ;


 int security_inode_getattr (struct path const*) ;
 int vfs_getattr_nosec (struct path const*,struct kstat*,int ,unsigned int) ;

int vfs_getattr(const struct path *path, struct kstat *stat,
  u32 request_mask, unsigned int query_flags)
{
 int retval;

 retval = security_inode_getattr(path);
 if (retval)
  return retval;
 return vfs_getattr_nosec(path, stat, request_mask, query_flags);
}
