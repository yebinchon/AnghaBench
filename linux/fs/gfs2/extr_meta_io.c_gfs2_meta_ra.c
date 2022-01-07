
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int sb_bsize_shift; } ;
struct gfs2_sbd {TYPE_2__ sd_sb; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {TYPE_1__ gl_name; } ;
struct buffer_head {int dummy; } ;


 int BUG_ON (int) ;
 int CREATE ;
 int REQ_META ;
 int REQ_OP_READ ;
 int REQ_PRIO ;
 int REQ_RAHEAD ;
 int brelse (struct buffer_head*) ;
 int buffer_locked (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 struct buffer_head* gfs2_getbuf (struct gfs2_glock*,int ,int ) ;
 int gfs2_tune_get (struct gfs2_sbd*,int ) ;
 int gt_max_readahead ;
 int ll_rw_block (int ,int,int,struct buffer_head**) ;
 int wait_on_buffer (struct buffer_head*) ;

struct buffer_head *gfs2_meta_ra(struct gfs2_glock *gl, u64 dblock, u32 extlen)
{
 struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
 struct buffer_head *first_bh, *bh;
 u32 max_ra = gfs2_tune_get(sdp, gt_max_readahead) >>
     sdp->sd_sb.sb_bsize_shift;

 BUG_ON(!extlen);

 if (max_ra < 1)
  max_ra = 1;
 if (extlen > max_ra)
  extlen = max_ra;

 first_bh = gfs2_getbuf(gl, dblock, CREATE);

 if (buffer_uptodate(first_bh))
  goto out;
 if (!buffer_locked(first_bh))
  ll_rw_block(REQ_OP_READ, REQ_META | REQ_PRIO, 1, &first_bh);

 dblock++;
 extlen--;

 while (extlen) {
  bh = gfs2_getbuf(gl, dblock, CREATE);

  if (!buffer_uptodate(bh) && !buffer_locked(bh))
   ll_rw_block(REQ_OP_READ,
        REQ_RAHEAD | REQ_META | REQ_PRIO,
        1, &bh);
  brelse(bh);
  dblock++;
  extlen--;
  if (!buffer_locked(first_bh) && buffer_uptodate(first_bh))
   goto out;
 }

 wait_on_buffer(first_bh);
out:
 return first_bh;
}
