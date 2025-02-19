
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_reservation_map {int dummy; } ;
struct ocfs2_alloc_reservation {unsigned int r_start; unsigned int r_len; } ;


 int BUG_ON (int) ;
 int __ocfs2_resv_discard (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ;
 unsigned int ocfs2_resv_end (struct ocfs2_alloc_reservation*) ;

__attribute__((used)) static void
 ocfs2_adjust_resv_from_alloc(struct ocfs2_reservation_map *resmap,
         struct ocfs2_alloc_reservation *resv,
         unsigned int start, unsigned int end)
{
 unsigned int rhs = 0;
 unsigned int old_end = ocfs2_resv_end(resv);

 BUG_ON(start != resv->r_start || old_end < end);




 if (old_end == end) {
  __ocfs2_resv_discard(resmap, resv);
  return;
 }

 rhs = old_end - end;




 BUG_ON(rhs == 0);

 resv->r_start = end + 1;
 resv->r_len = old_end - resv->r_start + 1;
}
