
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_reservation_map {unsigned int m_bitmap_len; } ;
struct ocfs2_alloc_reservation {int r_last_len; unsigned int r_last_start; } ;


 int BUG_ON (int) ;
 int __ocfs2_resv_find_window (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*,unsigned int,unsigned int) ;
 int ocfs2_cannibalize_resv (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*,unsigned int) ;
 int ocfs2_resv_empty (struct ocfs2_alloc_reservation*) ;

__attribute__((used)) static void ocfs2_resv_find_window(struct ocfs2_reservation_map *resmap,
       struct ocfs2_alloc_reservation *resv,
       unsigned int wanted)
{
 unsigned int goal = 0;

 BUG_ON(!ocfs2_resv_empty(resv));






 if (resv->r_last_len) {
  goal = resv->r_last_start + resv->r_last_len;
  if (goal >= resmap->m_bitmap_len)
   goal = 0;
 }

 __ocfs2_resv_find_window(resmap, resv, goal, wanted);


 if (ocfs2_resv_empty(resv) && goal != 0)
  __ocfs2_resv_find_window(resmap, resv, 0, wanted);

 if (ocfs2_resv_empty(resv)) {




  ocfs2_cannibalize_resv(resmap, resv, wanted);
 }

 BUG_ON(ocfs2_resv_empty(resv));
}
