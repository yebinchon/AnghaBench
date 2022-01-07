
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_reservation_map {int dummy; } ;
struct ocfs2_alloc_reservation {int dummy; } ;


 int __ocfs2_resv_discard (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ;
 int resv_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ocfs2_resv_discard(struct ocfs2_reservation_map *resmap,
   struct ocfs2_alloc_reservation *resv)
{
 if (resv) {
  spin_lock(&resv_lock);
  __ocfs2_resv_discard(resmap, resv);
  spin_unlock(&resv_lock);
 }
}
