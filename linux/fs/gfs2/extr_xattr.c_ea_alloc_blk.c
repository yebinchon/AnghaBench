
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_sbd {int sd_jbsize; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_inode; int i_gl; } ;
struct gfs2_ea_header {scalar_t__ ea_num_ptrs; int ea_flags; int ea_type; int ea_rec_len; } ;
struct buffer_head {int dummy; } ;


 int GFS2_EAFLAG_LAST ;
 int GFS2_EATYPE_UNUSED ;
 struct gfs2_ea_header* GFS2_EA_BH2FIRST (struct buffer_head*) ;
 int GFS2_FORMAT_EA ;
 int GFS2_METATYPE_EA ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int cpu_to_be32 (int ) ;
 int gfs2_add_inode_blocks (int *,int) ;
 int gfs2_alloc_blocks (struct gfs2_inode*,int *,unsigned int*,int ,int *) ;
 int gfs2_buffer_clear_tail (struct buffer_head*,int) ;
 struct buffer_head* gfs2_meta_new (int ,int ) ;
 int gfs2_metatype_set (struct buffer_head*,int ,int ) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_remove_revoke (struct gfs2_sbd*,int ,int) ;

__attribute__((used)) static int ea_alloc_blk(struct gfs2_inode *ip, struct buffer_head **bhp)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_ea_header *ea;
 unsigned int n = 1;
 u64 block;
 int error;

 error = gfs2_alloc_blocks(ip, &block, &n, 0, ((void*)0));
 if (error)
  return error;
 gfs2_trans_remove_revoke(sdp, block, 1);
 *bhp = gfs2_meta_new(ip->i_gl, block);
 gfs2_trans_add_meta(ip->i_gl, *bhp);
 gfs2_metatype_set(*bhp, GFS2_METATYPE_EA, GFS2_FORMAT_EA);
 gfs2_buffer_clear_tail(*bhp, sizeof(struct gfs2_meta_header));

 ea = GFS2_EA_BH2FIRST(*bhp);
 ea->ea_rec_len = cpu_to_be32(sdp->sd_jbsize);
 ea->ea_type = GFS2_EATYPE_UNUSED;
 ea->ea_flags = GFS2_EAFLAG_LAST;
 ea->ea_num_ptrs = 0;

 gfs2_add_inode_blocks(&ip->i_inode, 1);

 return 0;
}
