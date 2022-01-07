
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ freetag; scalar_t__ length; } ;
typedef TYPE_3__ xfs_dir2_data_unused_t ;
typedef int xfs_dir2_data_hdr_t ;
struct xfs_dir2_data_free {scalar_t__ length; } ;
typedef struct xfs_dir2_data_free xfs_dir2_data_free_t ;
typedef scalar_t__ xfs_dir2_data_aoff_t ;
struct xfs_da_args {TYPE_2__* dp; int geo; } ;
struct xfs_buf {int * b_addr; } ;
typedef scalar_t__ __be16 ;
struct TYPE_9__ {TYPE_1__* d_ops; } ;
struct TYPE_8__ {scalar_t__ data_entry_offset; struct xfs_dir2_data_free* (* data_bestfree_p ) (int *) ;} ;


 int ASSERT (int) ;
 int XFS_DIR2_DATA_FREE_TAG ;
 int be16_add_cpu (scalar_t__*,scalar_t__) ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 void* cpu_to_be16 (int) ;
 struct xfs_dir2_data_free* stub1 (int *) ;
 struct xfs_dir2_data_free* xfs_dir2_data_freefind (int *,struct xfs_dir2_data_free*,TYPE_3__*) ;
 struct xfs_dir2_data_free* xfs_dir2_data_freeinsert (int *,struct xfs_dir2_data_free*,TYPE_3__*,int*) ;
 int xfs_dir2_data_freeremove (int *,struct xfs_dir2_data_free*,struct xfs_dir2_data_free*,int*) ;
 int xfs_dir2_data_log_unused (struct xfs_da_args*,struct xfs_buf*,TYPE_3__*) ;
 void** xfs_dir2_data_unused_tag_p (TYPE_3__*) ;
 char* xfs_dir3_data_endp (int ,int *) ;

void
xfs_dir2_data_make_free(
 struct xfs_da_args *args,
 struct xfs_buf *bp,
 xfs_dir2_data_aoff_t offset,
 xfs_dir2_data_aoff_t len,
 int *needlogp,
 int *needscanp)
{
 xfs_dir2_data_hdr_t *hdr;
 xfs_dir2_data_free_t *dfp;
 char *endptr;
 int needscan;
 xfs_dir2_data_unused_t *newdup;
 xfs_dir2_data_unused_t *postdup;
 xfs_dir2_data_unused_t *prevdup;
 struct xfs_dir2_data_free *bf;

 hdr = bp->b_addr;




 endptr = xfs_dir3_data_endp(args->geo, hdr);
 ASSERT(endptr != ((void*)0));





 if (offset > args->dp->d_ops->data_entry_offset) {
  __be16 *tagp;

  tagp = (__be16 *)((char *)hdr + offset) - 1;
  prevdup = (xfs_dir2_data_unused_t *)((char *)hdr + be16_to_cpu(*tagp));
  if (be16_to_cpu(prevdup->freetag) != XFS_DIR2_DATA_FREE_TAG)
   prevdup = ((void*)0);
 } else
  prevdup = ((void*)0);




 if ((char *)hdr + offset + len < endptr) {
  postdup =
   (xfs_dir2_data_unused_t *)((char *)hdr + offset + len);
  if (be16_to_cpu(postdup->freetag) != XFS_DIR2_DATA_FREE_TAG)
   postdup = ((void*)0);
 } else
  postdup = ((void*)0);
 ASSERT(*needscanp == 0);
 needscan = 0;




 bf = args->dp->d_ops->data_bestfree_p(hdr);
 if (prevdup && postdup) {
  xfs_dir2_data_free_t *dfp2;




  dfp = xfs_dir2_data_freefind(hdr, bf, prevdup);
  dfp2 = xfs_dir2_data_freefind(hdr, bf, postdup);






  needscan = (bf[2].length != 0);



  be16_add_cpu(&prevdup->length, len + be16_to_cpu(postdup->length));
  *xfs_dir2_data_unused_tag_p(prevdup) =
   cpu_to_be16((char *)prevdup - (char *)hdr);
  xfs_dir2_data_log_unused(args, bp, prevdup);
  if (!needscan) {






   ASSERT(dfp && dfp2);
   if (dfp == &bf[1]) {
    dfp = &bf[0];
    ASSERT(dfp2 == dfp);
    dfp2 = &bf[1];
   }
   xfs_dir2_data_freeremove(hdr, bf, dfp2, needlogp);
   xfs_dir2_data_freeremove(hdr, bf, dfp, needlogp);



   dfp = xfs_dir2_data_freeinsert(hdr, bf, prevdup,
             needlogp);
   ASSERT(dfp == &bf[0]);
   ASSERT(dfp->length == prevdup->length);
   ASSERT(!dfp[1].length);
   ASSERT(!dfp[2].length);
  }
 }



 else if (prevdup) {
  dfp = xfs_dir2_data_freefind(hdr, bf, prevdup);
  be16_add_cpu(&prevdup->length, len);
  *xfs_dir2_data_unused_tag_p(prevdup) =
   cpu_to_be16((char *)prevdup - (char *)hdr);
  xfs_dir2_data_log_unused(args, bp, prevdup);





  if (dfp) {
   xfs_dir2_data_freeremove(hdr, bf, dfp, needlogp);
   xfs_dir2_data_freeinsert(hdr, bf, prevdup, needlogp);
  }



  else {
   needscan = be16_to_cpu(prevdup->length) >
       be16_to_cpu(bf[2].length);
  }
 }



 else if (postdup) {
  dfp = xfs_dir2_data_freefind(hdr, bf, postdup);
  newdup = (xfs_dir2_data_unused_t *)((char *)hdr + offset);
  newdup->freetag = cpu_to_be16(XFS_DIR2_DATA_FREE_TAG);
  newdup->length = cpu_to_be16(len + be16_to_cpu(postdup->length));
  *xfs_dir2_data_unused_tag_p(newdup) =
   cpu_to_be16((char *)newdup - (char *)hdr);
  xfs_dir2_data_log_unused(args, bp, newdup);





  if (dfp) {
   xfs_dir2_data_freeremove(hdr, bf, dfp, needlogp);
   xfs_dir2_data_freeinsert(hdr, bf, newdup, needlogp);
  }



  else {
   needscan = be16_to_cpu(newdup->length) >
       be16_to_cpu(bf[2].length);
  }
 }



 else {
  newdup = (xfs_dir2_data_unused_t *)((char *)hdr + offset);
  newdup->freetag = cpu_to_be16(XFS_DIR2_DATA_FREE_TAG);
  newdup->length = cpu_to_be16(len);
  *xfs_dir2_data_unused_tag_p(newdup) =
   cpu_to_be16((char *)newdup - (char *)hdr);
  xfs_dir2_data_log_unused(args, bp, newdup);
  xfs_dir2_data_freeinsert(hdr, bf, newdup, needlogp);
 }
 *needscanp = needscan;
}
