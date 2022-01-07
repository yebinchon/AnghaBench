
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_super {int osb_la_resmap; int la_last_gd; int osb_lock; int local_alloc_bits; TYPE_1__* local_alloc_bh; } ;
struct ocfs2_local_alloc {void* la_bm_off; int la_bitmap; int la_size; } ;
struct TYPE_5__ {void* i_total; scalar_t__ i_used; } ;
struct TYPE_6__ {TYPE_2__ bitmap1; } ;
struct ocfs2_dinode {TYPE_3__ id1; } ;
struct ocfs2_alloc_context {int ac_last_group; int ac_bits_wanted; } ;
typedef int handle_t ;
struct TYPE_4__ {scalar_t__ b_data; } ;


 int ENOSPC ;
 scalar_t__ OCFS2_LA_DISABLED ;
 int OCFS2_LA_EVENT_FRAGMENTED ;
 struct ocfs2_local_alloc* OCFS2_LOCAL_ALLOC (struct ocfs2_dinode*) ;
 void* cpu_to_le32 (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (void*) ;
 int memset (int ,int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_claim_clusters (int *,struct ocfs2_alloc_context*,int ,int *,int *) ;
 scalar_t__ ocfs2_recalc_la_window (struct ocfs2_super*,int ) ;
 int ocfs2_resmap_restart (int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_local_alloc_new_window (int ,int ) ;
 int trace_ocfs2_local_alloc_new_window_result (void*,int ) ;

__attribute__((used)) static int ocfs2_local_alloc_new_window(struct ocfs2_super *osb,
     handle_t *handle,
     struct ocfs2_alloc_context *ac)
{
 int status = 0;
 u32 cluster_off, cluster_count;
 struct ocfs2_dinode *alloc = ((void*)0);
 struct ocfs2_local_alloc *la;

 alloc = (struct ocfs2_dinode *) osb->local_alloc_bh->b_data;
 la = OCFS2_LOCAL_ALLOC(alloc);

 trace_ocfs2_local_alloc_new_window(
  le32_to_cpu(alloc->id1.bitmap1.i_total),
  osb->local_alloc_bits);




 ac->ac_last_group = osb->la_last_gd;




 status = ocfs2_claim_clusters(handle, ac, osb->local_alloc_bits,
          &cluster_off, &cluster_count);
 if (status == -ENOSPC) {
retry_enospc:





  if (ocfs2_recalc_la_window(osb, OCFS2_LA_EVENT_FRAGMENTED) ==
      OCFS2_LA_DISABLED)
   goto bail;

  ac->ac_bits_wanted = osb->local_alloc_bits;
  status = ocfs2_claim_clusters(handle, ac,
           osb->local_alloc_bits,
           &cluster_off,
           &cluster_count);
  if (status == -ENOSPC)
   goto retry_enospc;





  if (status == 0) {
   spin_lock(&osb->osb_lock);
   osb->local_alloc_bits = cluster_count;
   spin_unlock(&osb->osb_lock);
  }
 }
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto bail;
 }

 osb->la_last_gd = ac->ac_last_group;

 la->la_bm_off = cpu_to_le32(cluster_off);
 alloc->id1.bitmap1.i_total = cpu_to_le32(cluster_count);




 alloc->id1.bitmap1.i_used = 0;
 memset(OCFS2_LOCAL_ALLOC(alloc)->la_bitmap, 0,
        le16_to_cpu(la->la_size));

 ocfs2_resmap_restart(&osb->osb_la_resmap, cluster_count,
        OCFS2_LOCAL_ALLOC(alloc)->la_bitmap);

 trace_ocfs2_local_alloc_new_window_result(
  OCFS2_LOCAL_ALLOC(alloc)->la_bm_off,
  le32_to_cpu(alloc->id1.bitmap1.i_total));

bail:
 if (status)
  mlog_errno(status);
 return status;
}
