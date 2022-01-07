
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_jbsize; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_gl; int i_eattr; int i_inode; } ;
struct gfs2_ea_header {int ea_flags; int ea_type; int ea_rec_len; } ;
struct buffer_head {int dummy; } ;


 int GFS2_EAFLAG_LAST ;
 int GFS2_EATYPE_UNUSED ;
 struct gfs2_ea_header* GFS2_EA_BH2FIRST (struct buffer_head*) ;
 int GFS2_FORMAT_EA ;
 int GFS2_METATYPE_EA ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_be32 (int ) ;
 int gfs2_buffer_clear_tail (struct buffer_head*,int) ;
 struct buffer_head* gfs2_meta_new (int ,int ) ;
 int gfs2_metatype_set (struct buffer_head*,int ,int ) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;

__attribute__((used)) static void gfs2_init_xattr(struct gfs2_inode *ip)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct buffer_head *bh;
 struct gfs2_ea_header *ea;

 bh = gfs2_meta_new(ip->i_gl, ip->i_eattr);
 gfs2_trans_add_meta(ip->i_gl, bh);
 gfs2_metatype_set(bh, GFS2_METATYPE_EA, GFS2_FORMAT_EA);
 gfs2_buffer_clear_tail(bh, sizeof(struct gfs2_meta_header));

 ea = GFS2_EA_BH2FIRST(bh);
 ea->ea_rec_len = cpu_to_be32(sdp->sd_jbsize);
 ea->ea_type = GFS2_EATYPE_UNUSED;
 ea->ea_flags = GFS2_EAFLAG_LAST;

 brelse(bh);
}
