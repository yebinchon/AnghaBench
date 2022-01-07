
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec64 {int tv_sec; int tv_nsec; } ;
struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_leaf {int lf_sec; int lf_nsec; int lf_entries; } ;
struct TYPE_3__ {int i_mode; struct timespec64 i_ctime; struct timespec64 i_mtime; } ;
struct gfs2_inode {int i_diskflags; scalar_t__ i_depth; TYPE_1__ i_inode; int i_entries; } ;
struct gfs2_dirent {void* de_rahead; void* de_type; } ;
struct gfs2_diradd {struct buffer_head* bh; struct gfs2_dirent* dent; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ENOSPC ;
 int GFS2_DIF_EXHASH ;
 scalar_t__ GFS2_DIR_MAX_DEPTH ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int IF2DT (int ) ;
 scalar_t__ IS_ERR (struct gfs2_dirent*) ;
 int PTR_ERR (struct gfs2_dirent*) ;
 scalar_t__ S_ISDIR (int ) ;
 int be16_add_cpu (int *,int) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 struct timespec64 current_time (TYPE_1__*) ;
 int dir_double_exhash (struct gfs2_inode*) ;
 int dir_make_exhash (struct inode*) ;
 int dir_new_leaf (struct inode*,struct qstr const*) ;
 int dir_split_leaf (struct inode*,struct qstr const*) ;
 int gfs2_dirent_find_space ;
 struct gfs2_dirent* gfs2_dirent_search (struct inode*,struct qstr const*,int ,struct buffer_head**) ;
 struct gfs2_dirent* gfs2_init_dirent (struct inode*,struct gfs2_dirent*,struct qstr const*,struct buffer_head*) ;
 int gfs2_inode_ra_len (struct gfs2_inode const*) ;
 int gfs2_inum_out (struct gfs2_inode const*,struct gfs2_dirent*) ;
 int inc_nlink (TYPE_1__*) ;
 int mark_inode_dirty (struct inode*) ;

int gfs2_dir_add(struct inode *inode, const struct qstr *name,
   const struct gfs2_inode *nip, struct gfs2_diradd *da)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct buffer_head *bh = da->bh;
 struct gfs2_dirent *dent = da->dent;
 struct timespec64 tv;
 struct gfs2_leaf *leaf;
 int error;

 while(1) {
  if (da->bh == ((void*)0)) {
   dent = gfs2_dirent_search(inode, name,
        gfs2_dirent_find_space, &bh);
  }
  if (dent) {
   if (IS_ERR(dent))
    return PTR_ERR(dent);
   dent = gfs2_init_dirent(inode, dent, name, bh);
   gfs2_inum_out(nip, dent);
   dent->de_type = cpu_to_be16(IF2DT(nip->i_inode.i_mode));
   dent->de_rahead = cpu_to_be16(gfs2_inode_ra_len(nip));
   tv = current_time(&ip->i_inode);
   if (ip->i_diskflags & GFS2_DIF_EXHASH) {
    leaf = (struct gfs2_leaf *)bh->b_data;
    be16_add_cpu(&leaf->lf_entries, 1);
    leaf->lf_nsec = cpu_to_be32(tv.tv_nsec);
    leaf->lf_sec = cpu_to_be64(tv.tv_sec);
   }
   da->dent = ((void*)0);
   da->bh = ((void*)0);
   brelse(bh);
   ip->i_entries++;
   ip->i_inode.i_mtime = ip->i_inode.i_ctime = tv;
   if (S_ISDIR(nip->i_inode.i_mode))
    inc_nlink(&ip->i_inode);
   mark_inode_dirty(inode);
   error = 0;
   break;
  }
  if (!(ip->i_diskflags & GFS2_DIF_EXHASH)) {
   error = dir_make_exhash(inode);
   if (error)
    break;
   continue;
  }
  error = dir_split_leaf(inode, name);
  if (error == 0)
   continue;
  if (error < 0)
   break;
  if (ip->i_depth < GFS2_DIR_MAX_DEPTH) {
   error = dir_double_exhash(ip);
   if (error)
    break;
   error = dir_split_leaf(inode, name);
   if (error < 0)
    break;
   if (error == 0)
    continue;
  }
  error = dir_new_leaf(inode, name);
  if (!error)
   continue;
  error = -ENOSPC;
  break;
 }
 return error;
}
