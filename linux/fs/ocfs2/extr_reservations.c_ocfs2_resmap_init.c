
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_reservation_map {int m_lru; int m_reservations; struct ocfs2_super* m_osb; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int memset (struct ocfs2_reservation_map*,int ,int) ;

int ocfs2_resmap_init(struct ocfs2_super *osb,
        struct ocfs2_reservation_map *resmap)
{
 memset(resmap, 0, sizeof(*resmap));

 resmap->m_osb = osb;
 resmap->m_reservations = RB_ROOT;

 INIT_LIST_HEAD(&resmap->m_lru);

 return 0;
}
