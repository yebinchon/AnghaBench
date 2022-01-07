
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int u64 ;
struct TYPE_5__ {unsigned int sb_bsize_shift; int sb_bsize; } ;
struct gfs2_sbd {int sd_rindex; TYPE_1__ sd_sb; } ;
struct TYPE_6__ {unsigned int i_blkbits; } ;
struct gfs2_inode {TYPE_2__ i_inode; } ;
struct buffer_head {unsigned int b_size; scalar_t__ b_state; } ;


 int BUG_ON (int ) ;
 struct gfs2_inode* GFS2_I (int ) ;
 struct gfs2_sbd* GFS2_SB (TYPE_2__*) ;
 int buffer_mapped (struct buffer_head*) ;
 int gfs2_block_map (TYPE_2__*,unsigned int,struct buffer_head*,int ) ;
 int gfs2_is_dir (struct gfs2_inode*) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 unsigned int gfs2_max_stuffed_size (struct gfs2_inode*) ;
 int i_size_read (TYPE_2__*) ;

int gfs2_write_alloc_required(struct gfs2_inode *ip, u64 offset,
         unsigned int len)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct buffer_head bh;
 unsigned int shift;
 u64 lblock, lblock_stop, size;
 u64 end_of_file;

 if (!len)
  return 0;

 if (gfs2_is_stuffed(ip)) {
  if (offset + len > gfs2_max_stuffed_size(ip))
   return 1;
  return 0;
 }

 shift = sdp->sd_sb.sb_bsize_shift;
 BUG_ON(gfs2_is_dir(ip));
 end_of_file = (i_size_read(&ip->i_inode) + sdp->sd_sb.sb_bsize - 1) >> shift;
 lblock = offset >> shift;
 lblock_stop = (offset + len + sdp->sd_sb.sb_bsize - 1) >> shift;
 if (lblock_stop > end_of_file && ip != GFS2_I(sdp->sd_rindex))
  return 1;

 size = (lblock_stop - lblock) << shift;
 do {
  bh.b_state = 0;
  bh.b_size = size;
  gfs2_block_map(&ip->i_inode, lblock, &bh, 0);
  if (!buffer_mapped(&bh))
   return 1;
  size -= bh.b_size;
  lblock += (bh.b_size >> ip->i_inode.i_blkbits);
 } while(size > 0);

 return 0;
}
