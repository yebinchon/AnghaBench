
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct timespec64 {int tv_sec; int tv_nsec; } ;
struct qstr {int dummy; } ;
struct gfs2_leaf {int lf_sec; int lf_nsec; int lf_entries; } ;
struct TYPE_5__ {struct timespec64 i_ctime; struct timespec64 i_mtime; } ;
struct gfs2_inode {int i_diskflags; TYPE_1__ i_inode; int i_entries; } ;
struct gfs2_dirent {int de_rec_len; } ;
struct dentry {struct qstr d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EIO ;
 int GFS2_DIF_EXHASH ;
 scalar_t__ IS_ERR (struct gfs2_dirent*) ;
 int PTR_ERR (struct gfs2_dirent*) ;
 int be16_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 struct timespec64 current_time (TYPE_1__*) ;
 scalar_t__ d_is_dir (struct dentry const*) ;
 int dirent_del (struct gfs2_inode*,struct buffer_head*,struct gfs2_dirent*,struct gfs2_dirent*) ;
 int drop_nlink (TYPE_1__*) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 scalar_t__ gfs2_dirent_find (struct gfs2_dirent*,struct qstr const*,int *) ;
 int gfs2_dirent_prev ;
 struct gfs2_dirent* gfs2_dirent_search (TYPE_1__*,struct qstr const*,int ,struct buffer_head**) ;
 int mark_inode_dirty (TYPE_1__*) ;

int gfs2_dir_del(struct gfs2_inode *dip, const struct dentry *dentry)
{
 const struct qstr *name = &dentry->d_name;
 struct gfs2_dirent *dent, *prev = ((void*)0);
 struct buffer_head *bh;
 struct timespec64 tv = current_time(&dip->i_inode);



 dent = gfs2_dirent_search(&dip->i_inode, name, gfs2_dirent_prev, &bh);
 if (!dent) {
  gfs2_consist_inode(dip);
  return -EIO;
 }
 if (IS_ERR(dent)) {
  gfs2_consist_inode(dip);
  return PTR_ERR(dent);
 }

 if (gfs2_dirent_find(dent, name, ((void*)0)) == 0) {
  prev = dent;
  dent = (struct gfs2_dirent *)((char *)dent + be16_to_cpu(prev->de_rec_len));
 }

 dirent_del(dip, bh, prev, dent);
 if (dip->i_diskflags & GFS2_DIF_EXHASH) {
  struct gfs2_leaf *leaf = (struct gfs2_leaf *)bh->b_data;
  u16 entries = be16_to_cpu(leaf->lf_entries);
  if (!entries)
   gfs2_consist_inode(dip);
  leaf->lf_entries = cpu_to_be16(--entries);
  leaf->lf_nsec = cpu_to_be32(tv.tv_nsec);
  leaf->lf_sec = cpu_to_be64(tv.tv_sec);
 }
 brelse(bh);

 if (!dip->i_entries)
  gfs2_consist_inode(dip);
 dip->i_entries--;
 dip->i_inode.i_mtime = dip->i_inode.i_ctime = tv;
 if (d_is_dir(dentry))
  drop_nlink(&dip->i_inode);
 mark_inode_dirty(&dip->i_inode);

 return 0;
}
