
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_reservation_map {int dummy; } ;
struct ocfs2_alloc_reservation {int r_start; int r_last_start; int r_last_len; int r_len; } ;


 int BUG_ON (int) ;
 int ocfs2_adjust_resv_from_alloc (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*,int,unsigned int) ;
 int ocfs2_check_resmap (struct ocfs2_reservation_map*) ;
 scalar_t__ ocfs2_resmap_disabled (struct ocfs2_reservation_map*) ;
 int ocfs2_resv_empty (struct ocfs2_alloc_reservation*) ;
 unsigned int ocfs2_resv_end (struct ocfs2_alloc_reservation*) ;
 int ocfs2_resv_mark_lru (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ;
 int resv_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_resmap_claimed_bits_begin (int,unsigned int,int,int,unsigned int,int ,int,int) ;
 int trace_ocfs2_resmap_claimed_bits_end (int,unsigned int,int ,int,int) ;

void ocfs2_resmap_claimed_bits(struct ocfs2_reservation_map *resmap,
          struct ocfs2_alloc_reservation *resv,
          u32 cstart, u32 clen)
{
 unsigned int cend = cstart + clen - 1;

 if (resmap == ((void*)0) || ocfs2_resmap_disabled(resmap))
  return;

 if (resv == ((void*)0))
  return;

 BUG_ON(cstart != resv->r_start);

 spin_lock(&resv_lock);

 trace_ocfs2_resmap_claimed_bits_begin(cstart, cend, clen, resv->r_start,
           ocfs2_resv_end(resv), resv->r_len,
           resv->r_last_start,
           resv->r_last_len);

 BUG_ON(cstart < resv->r_start);
 BUG_ON(cstart > ocfs2_resv_end(resv));
 BUG_ON(cend > ocfs2_resv_end(resv));

 ocfs2_adjust_resv_from_alloc(resmap, resv, cstart, cend);
 resv->r_last_start = cstart;
 resv->r_last_len = clen;





 if (!ocfs2_resv_empty(resv))
  ocfs2_resv_mark_lru(resmap, resv);

 trace_ocfs2_resmap_claimed_bits_end(resv->r_start, ocfs2_resv_end(resv),
         resv->r_len, resv->r_last_start,
         resv->r_last_len);

 ocfs2_check_resmap(resmap);

 spin_unlock(&resv_lock);
}
