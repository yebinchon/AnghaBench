
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_reservation_map {int m_lru; } ;
struct ocfs2_alloc_reservation {int r_lru; } ;


 int assert_spin_locked (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int resv_lock ;

__attribute__((used)) static void ocfs2_resv_mark_lru(struct ocfs2_reservation_map *resmap,
    struct ocfs2_alloc_reservation *resv)
{
 assert_spin_locked(&resv_lock);

 if (!list_empty(&resv->r_lru))
  list_del_init(&resv->r_lru);

 list_add_tail(&resv->r_lru, &resmap->m_lru);
}
