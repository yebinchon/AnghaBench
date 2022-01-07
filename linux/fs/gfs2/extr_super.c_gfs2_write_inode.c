
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int i_flags; int i_lock; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct TYPE_2__ {scalar_t__ dirty_exceeded; } ;
struct backing_dev_info {TYPE_1__ wb; } ;
struct address_space {int host; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int GFS2_LFC_WRITE_INODE ;
 int GFS2_LOG_HEAD_FLUSH_NORMAL ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int I_DIRTY ;
 scalar_t__ WB_SYNC_ALL ;
 int filemap_fdatawait (struct address_space*) ;
 int filemap_fdatawrite (struct address_space*) ;
 int gfs2_ail1_flush (struct gfs2_sbd*,struct writeback_control*) ;
 struct address_space* gfs2_glock2aspace (int ) ;
 scalar_t__ gfs2_is_jdata (struct gfs2_inode*) ;
 int gfs2_log_flush (struct gfs2_sbd*,int ,int) ;
 int gfs2_ordered_del_inode (struct gfs2_inode*) ;
 struct backing_dev_info* inode_to_bdi (int ) ;
 int mark_inode_dirty_sync (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int gfs2_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct address_space *metamapping = gfs2_glock2aspace(ip->i_gl);
 struct backing_dev_info *bdi = inode_to_bdi(metamapping->host);
 int ret = 0;
 bool flush_all = (wbc->sync_mode == WB_SYNC_ALL || gfs2_is_jdata(ip));

 if (flush_all)
  gfs2_log_flush(GFS2_SB(inode), ip->i_gl,
          GFS2_LOG_HEAD_FLUSH_NORMAL |
          GFS2_LFC_WRITE_INODE);
 if (bdi->wb.dirty_exceeded)
  gfs2_ail1_flush(sdp, wbc);
 else
  filemap_fdatawrite(metamapping);
 if (flush_all)
  ret = filemap_fdatawait(metamapping);
 if (ret)
  mark_inode_dirty_sync(inode);
 else {
  spin_lock(&inode->i_lock);
  if (!(inode->i_flags & I_DIRTY))
   gfs2_ordered_del_inode(ip);
  spin_unlock(&inode->i_lock);
 }
 return ret;
}
