
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {unsigned int sb_bsize; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_log_descriptor {int ld_type; int ld_data1; int ld_length; } ;
struct gfs2_jdesc {int jd_found_revokes; int jd_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int __be64 ;


 unsigned int GFS2_LOG_DESC_REVOKE ;
 int GFS2_METATYPE_LB ;
 struct gfs2_sbd* GFS2_SB (int ) ;
 unsigned int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int gfs2_metatype_check (struct gfs2_sbd*,struct buffer_head*,int ) ;
 int gfs2_replay_incr_blk (struct gfs2_jdesc*,int *) ;
 int gfs2_replay_read_block (struct gfs2_jdesc*,int ,struct buffer_head**) ;
 int gfs2_revoke_add (struct gfs2_jdesc*,int ,int ) ;

__attribute__((used)) static int revoke_lo_scan_elements(struct gfs2_jdesc *jd, u32 start,
       struct gfs2_log_descriptor *ld, __be64 *ptr,
       int pass)
{
 struct gfs2_sbd *sdp = GFS2_SB(jd->jd_inode);
 unsigned int blks = be32_to_cpu(ld->ld_length);
 unsigned int revokes = be32_to_cpu(ld->ld_data1);
 struct buffer_head *bh;
 unsigned int offset;
 u64 blkno;
 int first = 1;
 int error;

 if (pass != 0 || be32_to_cpu(ld->ld_type) != GFS2_LOG_DESC_REVOKE)
  return 0;

 offset = sizeof(struct gfs2_log_descriptor);

 for (; blks; gfs2_replay_incr_blk(jd, &start), blks--) {
  error = gfs2_replay_read_block(jd, start, &bh);
  if (error)
   return error;

  if (!first)
   gfs2_metatype_check(sdp, bh, GFS2_METATYPE_LB);

  while (offset + sizeof(u64) <= sdp->sd_sb.sb_bsize) {
   blkno = be64_to_cpu(*(__be64 *)(bh->b_data + offset));

   error = gfs2_revoke_add(jd, blkno, start);
   if (error < 0) {
    brelse(bh);
    return error;
   }
   else if (error)
    jd->jd_found_revokes++;

   if (!--revokes)
    break;
   offset += sizeof(u64);
  }

  brelse(bh);
  offset = sizeof(struct gfs2_meta_header);
  first = 0;
 }

 return 0;
}
