
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct gfs2_statfs_change_host {int sc_dinodes; int sc_free; int sc_total; } ;
struct gfs2_sbd {scalar_t__ sd_statfs_force_sync; int sd_statfs_spin; struct gfs2_statfs_change_host sd_statfs_local; struct gfs2_statfs_change_host sd_statfs_master; int sd_sc_inode; int sd_statfs_inode; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int GL_NOCACHE ;
 int LM_ST_EXCLUSIVE ;
 int RES_DINODE ;
 int brelse (struct buffer_head*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_statfs_change_in (struct gfs2_statfs_change_host*,scalar_t__) ;
 int gfs2_trans_begin (struct gfs2_sbd*,int,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int sb_end_write (struct super_block*) ;
 int sb_start_write (struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int update_statfs (struct gfs2_sbd*,struct buffer_head*,struct buffer_head*) ;

int gfs2_statfs_sync(struct super_block *sb, int type)
{
 struct gfs2_sbd *sdp = sb->s_fs_info;
 struct gfs2_inode *m_ip = GFS2_I(sdp->sd_statfs_inode);
 struct gfs2_inode *l_ip = GFS2_I(sdp->sd_sc_inode);
 struct gfs2_statfs_change_host *m_sc = &sdp->sd_statfs_master;
 struct gfs2_statfs_change_host *l_sc = &sdp->sd_statfs_local;
 struct gfs2_holder gh;
 struct buffer_head *m_bh, *l_bh;
 int error;

 sb_start_write(sb);
 error = gfs2_glock_nq_init(m_ip->i_gl, LM_ST_EXCLUSIVE, GL_NOCACHE,
       &gh);
 if (error)
  goto out;

 error = gfs2_meta_inode_buffer(m_ip, &m_bh);
 if (error)
  goto out_unlock;

 spin_lock(&sdp->sd_statfs_spin);
 gfs2_statfs_change_in(m_sc, m_bh->b_data +
         sizeof(struct gfs2_dinode));
 if (!l_sc->sc_total && !l_sc->sc_free && !l_sc->sc_dinodes) {
  spin_unlock(&sdp->sd_statfs_spin);
  goto out_bh;
 }
 spin_unlock(&sdp->sd_statfs_spin);

 error = gfs2_meta_inode_buffer(l_ip, &l_bh);
 if (error)
  goto out_bh;

 error = gfs2_trans_begin(sdp, 2 * RES_DINODE, 0);
 if (error)
  goto out_bh2;

 update_statfs(sdp, m_bh, l_bh);
 sdp->sd_statfs_force_sync = 0;

 gfs2_trans_end(sdp);

out_bh2:
 brelse(l_bh);
out_bh:
 brelse(m_bh);
out_unlock:
 gfs2_glock_dq_uninit(&gh);
out:
 sb_end_write(sb);
 return error;
}
