
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_dablk_t ;
struct TYPE_4__ {int count; int totsize; } ;
struct xfs_attr_shortform {TYPE_2__ hdr; struct xfs_attr_sf_entry* list; } ;
typedef struct xfs_attr_shortform xfs_attr_shortform_t ;
struct xfs_inode {struct xfs_ifork* i_afp; } ;
struct TYPE_3__ {scalar_t__ if_data; } ;
struct xfs_ifork {TYPE_1__ if_u1; } ;
struct xfs_da_args {size_t namelen; int flags; int hashval; int valuelen; int * value; int * name; int op_flags; int trans; int whichfork; int total; int geo; struct xfs_inode* dp; } ;
struct xfs_buf {int dummy; } ;
struct xfs_attr_sf_entry {size_t namelen; int flags; int * nameval; int valuelen; } ;
typedef int nargs ;


 int ASSERT (int) ;
 int ENOATTR ;
 int ENOSPC ;
 int XFS_ATTR_FORK ;
 int XFS_ATTR_NSP_ONDISK_TO_ARGS (int ) ;
 struct xfs_attr_sf_entry* XFS_ATTR_SF_NEXTENTRY (struct xfs_attr_sf_entry*) ;
 int XFS_DA_OP_OKNOENT ;
 int be16_to_cpu (int ) ;
 char* kmem_alloc (int,int ) ;
 int kmem_free (char*) ;
 int memcpy (char*,scalar_t__,int) ;
 int memset (char*,int ,int) ;
 int trace_xfs_attr_sf_to_leaf (struct xfs_da_args*) ;
 int xfs_attr3_leaf_add (struct xfs_buf*,struct xfs_da_args*) ;
 int xfs_attr3_leaf_create (struct xfs_da_args*,scalar_t__,struct xfs_buf**) ;
 int xfs_attr3_leaf_lookup_int (struct xfs_buf*,struct xfs_da_args*) ;
 int xfs_bmap_local_to_extents_empty (int ,struct xfs_inode*,int ) ;
 int xfs_da_grow_inode (struct xfs_da_args*,scalar_t__*) ;
 int xfs_da_hashname (int *,size_t) ;
 int xfs_idata_realloc (struct xfs_inode*,int,int ) ;

int
xfs_attr_shortform_to_leaf(
 struct xfs_da_args *args,
 struct xfs_buf **leaf_bp)
{
 struct xfs_inode *dp;
 struct xfs_attr_shortform *sf;
 struct xfs_attr_sf_entry *sfe;
 struct xfs_da_args nargs;
 char *tmpbuffer;
 int error, i, size;
 xfs_dablk_t blkno;
 struct xfs_buf *bp;
 struct xfs_ifork *ifp;

 trace_xfs_attr_sf_to_leaf(args);

 dp = args->dp;
 ifp = dp->i_afp;
 sf = (xfs_attr_shortform_t *)ifp->if_u1.if_data;
 size = be16_to_cpu(sf->hdr.totsize);
 tmpbuffer = kmem_alloc(size, 0);
 ASSERT(tmpbuffer != ((void*)0));
 memcpy(tmpbuffer, ifp->if_u1.if_data, size);
 sf = (xfs_attr_shortform_t *)tmpbuffer;

 xfs_idata_realloc(dp, -size, XFS_ATTR_FORK);
 xfs_bmap_local_to_extents_empty(args->trans, dp, XFS_ATTR_FORK);

 bp = ((void*)0);
 error = xfs_da_grow_inode(args, &blkno);
 if (error)
  goto out;

 ASSERT(blkno == 0);
 error = xfs_attr3_leaf_create(args, blkno, &bp);
 if (error)
  goto out;

 memset((char *)&nargs, 0, sizeof(nargs));
 nargs.dp = dp;
 nargs.geo = args->geo;
 nargs.total = args->total;
 nargs.whichfork = XFS_ATTR_FORK;
 nargs.trans = args->trans;
 nargs.op_flags = XFS_DA_OP_OKNOENT;

 sfe = &sf->list[0];
 for (i = 0; i < sf->hdr.count; i++) {
  nargs.name = sfe->nameval;
  nargs.namelen = sfe->namelen;
  nargs.value = &sfe->nameval[nargs.namelen];
  nargs.valuelen = sfe->valuelen;
  nargs.hashval = xfs_da_hashname(sfe->nameval,
      sfe->namelen);
  nargs.flags = XFS_ATTR_NSP_ONDISK_TO_ARGS(sfe->flags);
  error = xfs_attr3_leaf_lookup_int(bp, &nargs);
  ASSERT(error == -ENOATTR);
  error = xfs_attr3_leaf_add(bp, &nargs);
  ASSERT(error != -ENOSPC);
  if (error)
   goto out;
  sfe = XFS_ATTR_SF_NEXTENTRY(sfe);
 }
 error = 0;
 *leaf_bp = bp;
out:
 kmem_free(tmpbuffer);
 return error;
}
