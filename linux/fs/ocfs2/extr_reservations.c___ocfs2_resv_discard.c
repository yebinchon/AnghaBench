
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_reservation_map {int dummy; } ;
struct ocfs2_alloc_reservation {scalar_t__ r_last_start; scalar_t__ r_last_len; } ;


 int __ocfs2_resv_trunc (struct ocfs2_alloc_reservation*) ;
 int assert_spin_locked (int *) ;
 int ocfs2_resv_remove (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ;
 int resv_lock ;

__attribute__((used)) static void __ocfs2_resv_discard(struct ocfs2_reservation_map *resmap,
     struct ocfs2_alloc_reservation *resv)
{
 assert_spin_locked(&resv_lock);

 __ocfs2_resv_trunc(resv);




 resv->r_last_len = resv->r_last_start = 0;

 ocfs2_resv_remove(resmap, resv);
}
