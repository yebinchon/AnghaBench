
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct gfs2_inode {int i_inode; int i_gl; } ;
struct gfs2_ea_location {int el_bh; struct gfs2_ea_header* el_prev; struct gfs2_ea_header* el_ea; } ;
struct gfs2_ea_header {int ea_flags; int ea_rec_len; int ea_type; } ;


 struct gfs2_ea_header* GFS2_EA2NEXT (struct gfs2_ea_header*) ;
 int GFS2_EAFLAG_LAST ;
 int GFS2_EATYPE_UNUSED ;
 scalar_t__ GFS2_EA_IS_LAST (struct gfs2_ea_header*) ;
 int GFS2_EA_IS_STUFFED (struct gfs2_ea_header*) ;
 scalar_t__ GFS2_EA_REC_LEN (struct gfs2_ea_header*) ;
 int GFS2_SB (int *) ;
 int cpu_to_be32 (scalar_t__) ;
 int gfs2_assert_withdraw (int ,int) ;
 int gfs2_trans_add_meta (int ,int ) ;

__attribute__((used)) static void ea_set_remove_stuffed(struct gfs2_inode *ip,
      struct gfs2_ea_location *el)
{
 struct gfs2_ea_header *ea = el->el_ea;
 struct gfs2_ea_header *prev = el->el_prev;
 u32 len;

 gfs2_trans_add_meta(ip->i_gl, el->el_bh);

 if (!prev || !GFS2_EA_IS_STUFFED(ea)) {
  ea->ea_type = GFS2_EATYPE_UNUSED;
  return;
 } else if (GFS2_EA2NEXT(prev) != ea) {
  prev = GFS2_EA2NEXT(prev);
  gfs2_assert_withdraw(GFS2_SB(&ip->i_inode), GFS2_EA2NEXT(prev) == ea);
 }

 len = GFS2_EA_REC_LEN(prev) + GFS2_EA_REC_LEN(ea);
 prev->ea_rec_len = cpu_to_be32(len);

 if (GFS2_EA_IS_LAST(ea))
  prev->ea_flags |= GFS2_EAFLAG_LAST;
}
