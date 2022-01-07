
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct gfs2_log_descriptor {int ld_type; int ld_data1; } ;
struct gfs2_jdesc {int jd_replayed_blocks; int jd_found_blocks; int jd_inode; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct gfs2_glock {int dummy; } ;
struct buffer_head {scalar_t__ b_data; int b_size; } ;
typedef int __be64 ;
typedef int __be32 ;


 struct gfs2_inode* GFS2_I (int ) ;
 unsigned int GFS2_LOG_DESC_JDATA ;
 int GFS2_MAGIC ;
 unsigned int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_be32 (int ) ;
 struct buffer_head* gfs2_meta_new (struct gfs2_glock*,scalar_t__) ;
 int gfs2_replay_incr_blk (struct gfs2_jdesc*,int *) ;
 int gfs2_replay_read_block (struct gfs2_jdesc*,int ,struct buffer_head**) ;
 scalar_t__ gfs2_revoke_check (struct gfs2_jdesc*,scalar_t__,int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int databuf_lo_scan_elements(struct gfs2_jdesc *jd, u32 start,
        struct gfs2_log_descriptor *ld,
        __be64 *ptr, int pass)
{
 struct gfs2_inode *ip = GFS2_I(jd->jd_inode);
 struct gfs2_glock *gl = ip->i_gl;
 unsigned int blks = be32_to_cpu(ld->ld_data1);
 struct buffer_head *bh_log, *bh_ip;
 u64 blkno;
 u64 esc;
 int error = 0;

 if (pass != 1 || be32_to_cpu(ld->ld_type) != GFS2_LOG_DESC_JDATA)
  return 0;

 gfs2_replay_incr_blk(jd, &start);
 for (; blks; gfs2_replay_incr_blk(jd, &start), blks--) {
  blkno = be64_to_cpu(*ptr++);
  esc = be64_to_cpu(*ptr++);

  jd->jd_found_blocks++;

  if (gfs2_revoke_check(jd, blkno, start))
   continue;

  error = gfs2_replay_read_block(jd, start, &bh_log);
  if (error)
   return error;

  bh_ip = gfs2_meta_new(gl, blkno);
  memcpy(bh_ip->b_data, bh_log->b_data, bh_log->b_size);


  if (esc) {
   __be32 *eptr = (__be32 *)bh_ip->b_data;
   *eptr = cpu_to_be32(GFS2_MAGIC);
  }
  mark_buffer_dirty(bh_ip);

  brelse(bh_log);
  brelse(bh_ip);

  jd->jd_replayed_blocks++;
 }

 return error;
}
