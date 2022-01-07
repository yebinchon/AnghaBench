
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_reservation_map {TYPE_1__* m_osb; } ;
struct TYPE_2__ {scalar_t__ osb_resv_level; } ;



__attribute__((used)) static inline int ocfs2_resmap_disabled(struct ocfs2_reservation_map *resmap)
{
 if (resmap->m_osb->osb_resv_level == 0)
  return 1;
 return 0;
}
