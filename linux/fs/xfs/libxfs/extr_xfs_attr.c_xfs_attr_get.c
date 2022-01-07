
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_inode {int i_mount; } ;
struct xfs_da_args {unsigned char* value; int valuelen; int op_flags; } ;


 int ASSERT (int ) ;
 int ATTR_ALLOC ;
 int ATTR_KERNOVAL ;
 int EIO ;
 int XFS_DA_OP_ALLOCVAL ;
 int XFS_DA_OP_OKNOENT ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int ) ;
 int XFS_STATS_INC (int ,int ) ;
 int kmem_free (unsigned char*) ;
 int xfs_attr_args_init (struct xfs_da_args*,struct xfs_inode*,unsigned char const*,int) ;
 int xfs_attr_get_ilocked (struct xfs_inode*,struct xfs_da_args*) ;
 int xfs_ilock_attr_map_shared (struct xfs_inode*) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 int xs_attr_get ;

int
xfs_attr_get(
 struct xfs_inode *ip,
 const unsigned char *name,
 unsigned char **value,
 int *valuelenp,
 int flags)
{
 struct xfs_da_args args;
 uint lock_mode;
 int error;

 ASSERT((flags & (ATTR_ALLOC | ATTR_KERNOVAL)) || *value);

 XFS_STATS_INC(ip->i_mount, xs_attr_get);

 if (XFS_FORCED_SHUTDOWN(ip->i_mount))
  return -EIO;

 error = xfs_attr_args_init(&args, ip, name, flags);
 if (error)
  return error;


 args.op_flags = XFS_DA_OP_OKNOENT;
 if (flags & ATTR_ALLOC)
  args.op_flags |= XFS_DA_OP_ALLOCVAL;
 else
  args.value = *value;
 args.valuelen = *valuelenp;

 lock_mode = xfs_ilock_attr_map_shared(ip);
 error = xfs_attr_get_ilocked(ip, &args);
 xfs_iunlock(ip, lock_mode);
 *valuelenp = args.valuelen;


 if (error) {
  if (flags & ATTR_ALLOC) {
   kmem_free(args.value);
   *value = ((void*)0);
  }
  return error;
 }
 *value = args.value;
 return 0;
}
