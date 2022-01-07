
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct gfs2_sbd {int dummy; } ;
struct TYPE_4__ {int i_ctime; int i_mtime; } ;
struct gfs2_inode {int i_rw_mutex; int i_gl; int i_diskflags; TYPE_1__ i_inode; int i_no_addr; int i_goal; scalar_t__ i_height; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {int b_data; } ;


 int GFS2_DIF_TRUNC_IN_PROG ;
 struct gfs2_sbd* GFS2_SB (TYPE_1__*) ;
 int RES_DINODE ;
 int brelse (struct buffer_head*) ;
 int current_time (TYPE_1__*) ;
 int down_write (int *) ;
 int gfs2_buffer_clear_tail (struct buffer_head*,int) ;
 int gfs2_dinode_out (struct gfs2_inode*,int ) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_ordered_del_inode (struct gfs2_inode*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,int ,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int i_size_read (TYPE_1__*) ;
 int up_write (int *) ;

__attribute__((used)) static int trunc_end(struct gfs2_inode *ip)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct buffer_head *dibh;
 int error;

 error = gfs2_trans_begin(sdp, RES_DINODE, 0);
 if (error)
  return error;

 down_write(&ip->i_rw_mutex);

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (error)
  goto out;

 if (!i_size_read(&ip->i_inode)) {
  ip->i_height = 0;
  ip->i_goal = ip->i_no_addr;
  gfs2_buffer_clear_tail(dibh, sizeof(struct gfs2_dinode));
  gfs2_ordered_del_inode(ip);
 }
 ip->i_inode.i_mtime = ip->i_inode.i_ctime = current_time(&ip->i_inode);
 ip->i_diskflags &= ~GFS2_DIF_TRUNC_IN_PROG;

 gfs2_trans_add_meta(ip->i_gl, dibh);
 gfs2_dinode_out(ip, dibh->b_data);
 brelse(dibh);

out:
 up_write(&ip->i_rw_mutex);
 gfs2_trans_end(sdp);
 return error;
}
