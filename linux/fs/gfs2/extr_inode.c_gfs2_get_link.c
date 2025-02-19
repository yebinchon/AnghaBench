
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gfs2_inode {int i_inode; int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ECHILD ;
 int EIO ;
 int ENOMEM ;
 char const* ERR_PTR (int) ;
 int GFP_NOFS ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int IS_ERR (char*) ;
 int LM_ST_SHARED ;
 int brelse (struct buffer_head*) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq (struct gfs2_holder*) ;
 int gfs2_holder_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_holder_uninit (struct gfs2_holder*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 scalar_t__ i_size_read (int *) ;
 int kfree_link ;
 char* kzalloc (unsigned int,int ) ;
 int memcpy (char*,scalar_t__,unsigned int) ;
 int set_delayed_call (struct delayed_call*,int ,char*) ;

__attribute__((used)) static const char *gfs2_get_link(struct dentry *dentry,
     struct inode *inode,
     struct delayed_call *done)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder i_gh;
 struct buffer_head *dibh;
 unsigned int size;
 char *buf;
 int error;

 if (!dentry)
  return ERR_PTR(-ECHILD);

 gfs2_holder_init(ip->i_gl, LM_ST_SHARED, 0, &i_gh);
 error = gfs2_glock_nq(&i_gh);
 if (error) {
  gfs2_holder_uninit(&i_gh);
  return ERR_PTR(error);
 }

 size = (unsigned int)i_size_read(&ip->i_inode);
 if (size == 0) {
  gfs2_consist_inode(ip);
  buf = ERR_PTR(-EIO);
  goto out;
 }

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (error) {
  buf = ERR_PTR(error);
  goto out;
 }

 buf = kzalloc(size + 1, GFP_NOFS);
 if (!buf)
  buf = ERR_PTR(-ENOMEM);
 else
  memcpy(buf, dibh->b_data + sizeof(struct gfs2_dinode), size);
 brelse(dibh);
out:
 gfs2_glock_dq_uninit(&i_gh);
 if (!IS_ERR(buf))
  set_delayed_call(done, kfree_link, buf);
 return buf;
}
