
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int i_ctime; } ;
struct gfs2_inode {TYPE_1__ i_inode; int i_gl; } ;
struct gfs2_ea_location {int el_bh; struct gfs2_ea_header* el_prev; struct gfs2_ea_header* el_ea; } ;
struct gfs2_ea_header {int ea_type; int ea_flags; int ea_rec_len; } ;


 int GFS2_EAFLAG_LAST ;
 int GFS2_EATYPE_UNUSED ;
 scalar_t__ GFS2_EA_IS_LAST (struct gfs2_ea_header*) ;
 scalar_t__ GFS2_EA_REC_LEN (struct gfs2_ea_header*) ;
 int GFS2_SB (TYPE_1__*) ;
 int I_DIRTY_DATASYNC ;
 scalar_t__ RES_DINODE ;
 scalar_t__ RES_EATTR ;
 int __mark_inode_dirty (TYPE_1__*,int ) ;
 int cpu_to_be32 (scalar_t__) ;
 int current_time (TYPE_1__*) ;
 int gfs2_trans_add_meta (int ,int ) ;
 int gfs2_trans_begin (int ,scalar_t__,int ) ;
 int gfs2_trans_end (int ) ;

__attribute__((used)) static int ea_remove_stuffed(struct gfs2_inode *ip, struct gfs2_ea_location *el)
{
 struct gfs2_ea_header *ea = el->el_ea;
 struct gfs2_ea_header *prev = el->el_prev;
 int error;

 error = gfs2_trans_begin(GFS2_SB(&ip->i_inode), RES_DINODE + RES_EATTR, 0);
 if (error)
  return error;

 gfs2_trans_add_meta(ip->i_gl, el->el_bh);

 if (prev) {
  u32 len;

  len = GFS2_EA_REC_LEN(prev) + GFS2_EA_REC_LEN(ea);
  prev->ea_rec_len = cpu_to_be32(len);

  if (GFS2_EA_IS_LAST(ea))
   prev->ea_flags |= GFS2_EAFLAG_LAST;
 } else {
  ea->ea_type = GFS2_EATYPE_UNUSED;
 }

 ip->i_inode.i_ctime = current_time(&ip->i_inode);
 __mark_inode_dirty(&ip->i_inode, I_DIRTY_DATASYNC);

 gfs2_trans_end(GFS2_SB(&ip->i_inode));

 return error;
}
