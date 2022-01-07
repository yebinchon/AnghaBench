
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gfs2_sbd {unsigned int sd_qc_per_block; int sd_quota_mutex; int sd_qc_inode; } ;
struct gfs2_quota_data {unsigned int qd_slot; int qd_bh_count; struct gfs2_quota_change* qd_bh_qc; struct buffer_head* qd_bh; TYPE_2__* qd_gl; } ;
struct gfs2_quota_change {int dummy; } ;
struct gfs2_meta_header {int dummy; } ;
struct TYPE_6__ {int i_blkbits; } ;
struct gfs2_inode {int i_gl; TYPE_3__ i_inode; } ;
struct buffer_head {scalar_t__ b_data; int b_blocknr; int b_size; int b_state; } ;
struct TYPE_4__ {struct gfs2_sbd* ln_sbd; } ;
struct TYPE_5__ {TYPE_1__ gl_name; } ;


 int BIT (int ) ;
 int DIO_WAIT ;
 int EIO ;
 struct gfs2_inode* GFS2_I (int ) ;
 int GFS2_METATYPE_QC ;
 int brelse (struct buffer_head*) ;
 int gfs2_block_map (TYPE_3__*,unsigned int,struct buffer_head*,int ) ;
 int gfs2_meta_read (int ,int ,int ,int ,struct buffer_head**) ;
 scalar_t__ gfs2_metatype_check (struct gfs2_sbd*,struct buffer_head*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bh_get(struct gfs2_quota_data *qd)
{
 struct gfs2_sbd *sdp = qd->qd_gl->gl_name.ln_sbd;
 struct gfs2_inode *ip = GFS2_I(sdp->sd_qc_inode);
 unsigned int block, offset;
 struct buffer_head *bh;
 int error;
 struct buffer_head bh_map = { .b_state = 0, .b_blocknr = 0 };

 mutex_lock(&sdp->sd_quota_mutex);

 if (qd->qd_bh_count++) {
  mutex_unlock(&sdp->sd_quota_mutex);
  return 0;
 }

 block = qd->qd_slot / sdp->sd_qc_per_block;
 offset = qd->qd_slot % sdp->sd_qc_per_block;

 bh_map.b_size = BIT(ip->i_inode.i_blkbits);
 error = gfs2_block_map(&ip->i_inode, block, &bh_map, 0);
 if (error)
  goto fail;
 error = gfs2_meta_read(ip->i_gl, bh_map.b_blocknr, DIO_WAIT, 0, &bh);
 if (error)
  goto fail;
 error = -EIO;
 if (gfs2_metatype_check(sdp, bh, GFS2_METATYPE_QC))
  goto fail_brelse;

 qd->qd_bh = bh;
 qd->qd_bh_qc = (struct gfs2_quota_change *)
  (bh->b_data + sizeof(struct gfs2_meta_header) +
   offset * sizeof(struct gfs2_quota_change));

 mutex_unlock(&sdp->sd_quota_mutex);

 return 0;

fail_brelse:
 brelse(bh);
fail:
 qd->qd_bh_count--;
 mutex_unlock(&sdp->sd_quota_mutex);
 return error;
}
