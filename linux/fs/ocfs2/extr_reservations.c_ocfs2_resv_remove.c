
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_reservation_map {int m_reservations; } ;
struct ocfs2_alloc_reservation {int r_flags; int r_node; int r_lru; } ;


 int OCFS2_RESV_FLAG_INUSE ;
 int list_del_init (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void ocfs2_resv_remove(struct ocfs2_reservation_map *resmap,
         struct ocfs2_alloc_reservation *resv)
{
 if (resv->r_flags & OCFS2_RESV_FLAG_INUSE) {
  list_del_init(&resv->r_lru);
  rb_erase(&resv->r_node, &resmap->m_reservations);
  resv->r_flags &= ~OCFS2_RESV_FLAG_INUSE;
 }
}
