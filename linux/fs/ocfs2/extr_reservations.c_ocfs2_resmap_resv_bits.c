
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_reservation_map {int dummy; } ;
struct ocfs2_alloc_reservation {int r_flags; int r_start; int r_len; } ;


 int BUG_ON (scalar_t__) ;
 int ENOSPC ;
 int OCFS2_RESV_FLAG_TMP ;
 scalar_t__ ocfs2_resmap_disabled (struct ocfs2_reservation_map*) ;
 scalar_t__ ocfs2_resv_empty (struct ocfs2_alloc_reservation*) ;
 int ocfs2_resv_find_window (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*,unsigned int) ;
 unsigned int ocfs2_resv_window_bits (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ;
 int resv_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_resmap_resv_bits (int,int) ;

int ocfs2_resmap_resv_bits(struct ocfs2_reservation_map *resmap,
      struct ocfs2_alloc_reservation *resv,
      int *cstart, int *clen)
{
 if (resv == ((void*)0) || ocfs2_resmap_disabled(resmap))
  return -ENOSPC;

 spin_lock(&resv_lock);

 if (ocfs2_resv_empty(resv)) {





  unsigned int wanted = ocfs2_resv_window_bits(resmap, resv);

  if ((resv->r_flags & OCFS2_RESV_FLAG_TMP) || wanted < *clen)
   wanted = *clen;
  ocfs2_resv_find_window(resmap, resv, wanted);
  trace_ocfs2_resmap_resv_bits(resv->r_start, resv->r_len);
 }

 BUG_ON(ocfs2_resv_empty(resv));

 *cstart = resv->r_start;
 *clen = resv->r_len;

 spin_unlock(&resv_lock);
 return 0;
}
