
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_ctime; } ;
struct gfs2_inode {TYPE_1__ i_inode; int i_gl; } ;
struct gfs2_ea_request {int dummy; } ;
struct gfs2_ea_header {int dummy; } ;
struct ea_set {scalar_t__ es_el; scalar_t__ ea_split; struct gfs2_ea_request* es_er; } ;
struct buffer_head {int dummy; } ;


 int GFS2_SB (TYPE_1__*) ;
 int I_DIRTY_DATASYNC ;
 scalar_t__ RES_DINODE ;
 int RES_EATTR ;
 int __mark_inode_dirty (TYPE_1__*,int ) ;
 int current_time (TYPE_1__*) ;
 int ea_set_remove_stuffed (struct gfs2_inode*,scalar_t__) ;
 struct gfs2_ea_header* ea_split_ea (struct gfs2_ea_header*) ;
 int ea_write (struct gfs2_inode*,struct gfs2_ea_header*,struct gfs2_ea_request*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_begin (int ,scalar_t__,int ) ;
 int gfs2_trans_end (int ) ;

__attribute__((used)) static int ea_set_simple_noalloc(struct gfs2_inode *ip, struct buffer_head *bh,
     struct gfs2_ea_header *ea, struct ea_set *es)
{
 struct gfs2_ea_request *er = es->es_er;
 int error;

 error = gfs2_trans_begin(GFS2_SB(&ip->i_inode), RES_DINODE + 2 * RES_EATTR, 0);
 if (error)
  return error;

 gfs2_trans_add_meta(ip->i_gl, bh);

 if (es->ea_split)
  ea = ea_split_ea(ea);

 ea_write(ip, ea, er);

 if (es->es_el)
  ea_set_remove_stuffed(ip, es->es_el);

 ip->i_inode.i_ctime = current_time(&ip->i_inode);
 __mark_inode_dirty(&ip->i_inode, I_DIRTY_DATASYNC);

 gfs2_trans_end(GFS2_SB(&ip->i_inode));
 return error;
}
