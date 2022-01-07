
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_resv_level; int osb_dir_resv_level; } ;
struct ocfs2_reservation_map {struct ocfs2_super* m_osb; } ;
struct ocfs2_alloc_reservation {int r_flags; } ;


 int OCFS2_RESV_FLAG_DIR ;

__attribute__((used)) static unsigned int ocfs2_resv_window_bits(struct ocfs2_reservation_map *resmap,
        struct ocfs2_alloc_reservation *resv)
{
 struct ocfs2_super *osb = resmap->m_osb;
 unsigned int bits;

 if (!(resv->r_flags & OCFS2_RESV_FLAG_DIR)) {

  bits = 4 << osb->osb_resv_level;
 } else {
  bits = 4 << osb->osb_dir_resv_level;
 }
 return bits;
}
