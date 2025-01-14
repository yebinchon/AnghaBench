
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_attr_leafblock {int dummy; } ;
typedef struct xfs_attr_leafblock xfs_attr_leafblock_t ;
struct TYPE_5__ {scalar_t__ di_format; } ;
struct xfs_inode {TYPE_2__ i_d; TYPE_1__* i_mount; } ;
struct xfs_da_args {size_t namelen; int flags; int hashval; int valuelen; int * value; int * name; int op_flags; int trans; int whichfork; int total; struct xfs_inode* dp; TYPE_3__* geo; } ;
struct xfs_buf {char* b_addr; } ;
struct xfs_attr_leaf_name_local {size_t namelen; int valuelen; int * nameval; } ;
struct xfs_attr_leaf_entry {int flags; int hashval; int nameidx; } ;
struct xfs_attr3_icleaf_hdr {int count; } ;
typedef int nargs ;
struct TYPE_6__ {int blksize; } ;
struct TYPE_4__ {int m_flags; } ;


 int ASSERT (int) ;
 int ENOMEM ;
 int XFS_ATTR_FORK ;
 int XFS_ATTR_INCOMPLETE ;
 int XFS_ATTR_LOCAL ;
 int XFS_ATTR_NSP_ONDISK_TO_ARGS (int) ;
 int XFS_DA_OP_OKNOENT ;
 scalar_t__ XFS_DINODE_FMT_BTREE ;
 int XFS_MOUNT_ATTR2 ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 char* kmem_alloc (int,int ) ;
 int kmem_free (char*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int trace_xfs_attr_leaf_to_sf (struct xfs_da_args*) ;
 struct xfs_attr_leaf_entry* xfs_attr3_leaf_entryp (struct xfs_attr_leafblock*) ;
 int xfs_attr3_leaf_hdr_from_disk (TYPE_3__*,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ;
 struct xfs_attr_leaf_name_local* xfs_attr3_leaf_name_local (struct xfs_attr_leafblock*,int) ;
 int xfs_attr_fork_remove (struct xfs_inode*,int ) ;
 int xfs_attr_shortform_add (struct xfs_da_args*,int) ;
 int xfs_attr_shortform_create (struct xfs_da_args*) ;
 int xfs_da_shrink_inode (struct xfs_da_args*,int ,struct xfs_buf*) ;

int
xfs_attr3_leaf_to_shortform(
 struct xfs_buf *bp,
 struct xfs_da_args *args,
 int forkoff)
{
 struct xfs_attr_leafblock *leaf;
 struct xfs_attr3_icleaf_hdr ichdr;
 struct xfs_attr_leaf_entry *entry;
 struct xfs_attr_leaf_name_local *name_loc;
 struct xfs_da_args nargs;
 struct xfs_inode *dp = args->dp;
 char *tmpbuffer;
 int error;
 int i;

 trace_xfs_attr_leaf_to_sf(args);

 tmpbuffer = kmem_alloc(args->geo->blksize, 0);
 if (!tmpbuffer)
  return -ENOMEM;

 memcpy(tmpbuffer, bp->b_addr, args->geo->blksize);

 leaf = (xfs_attr_leafblock_t *)tmpbuffer;
 xfs_attr3_leaf_hdr_from_disk(args->geo, &ichdr, leaf);
 entry = xfs_attr3_leaf_entryp(leaf);


 memset(bp->b_addr, 0, args->geo->blksize);




 error = xfs_da_shrink_inode(args, 0, bp);
 if (error)
  goto out;

 if (forkoff == -1) {
  ASSERT(dp->i_mount->m_flags & XFS_MOUNT_ATTR2);
  ASSERT(dp->i_d.di_format != XFS_DINODE_FMT_BTREE);
  xfs_attr_fork_remove(dp, args->trans);
  goto out;
 }

 xfs_attr_shortform_create(args);




 memset((char *)&nargs, 0, sizeof(nargs));
 nargs.geo = args->geo;
 nargs.dp = dp;
 nargs.total = args->total;
 nargs.whichfork = XFS_ATTR_FORK;
 nargs.trans = args->trans;
 nargs.op_flags = XFS_DA_OP_OKNOENT;

 for (i = 0; i < ichdr.count; entry++, i++) {
  if (entry->flags & XFS_ATTR_INCOMPLETE)
   continue;
  if (!entry->nameidx)
   continue;
  ASSERT(entry->flags & XFS_ATTR_LOCAL);
  name_loc = xfs_attr3_leaf_name_local(leaf, i);
  nargs.name = name_loc->nameval;
  nargs.namelen = name_loc->namelen;
  nargs.value = &name_loc->nameval[nargs.namelen];
  nargs.valuelen = be16_to_cpu(name_loc->valuelen);
  nargs.hashval = be32_to_cpu(entry->hashval);
  nargs.flags = XFS_ATTR_NSP_ONDISK_TO_ARGS(entry->flags);
  xfs_attr_shortform_add(&nargs, forkoff);
 }
 error = 0;

out:
 kmem_free(tmpbuffer);
 return error;
}
