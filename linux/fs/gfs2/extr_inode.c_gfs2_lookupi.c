
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; } ;
struct qstr {int len; int name; } ;
struct inode {struct super_block* i_sb; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;


 int ENAMETOOLONG ;
 int ENOENT ;
 struct inode* ERR_PTR (int) ;
 int GFS2_FNAMESIZE ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int LM_ST_SHARED ;
 int MAY_EXEC ;
 int PTR_ERR (struct inode*) ;
 struct inode* d_inode (int ) ;
 struct inode* gfs2_dir_search (struct inode*,struct qstr const*,int) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int * gfs2_glock_is_locked_by_me (int ) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 scalar_t__ gfs2_holder_initialized (struct gfs2_holder*) ;
 int gfs2_holder_mark_uninitialized (struct gfs2_holder*) ;
 int gfs2_permission (struct inode*,int ) ;
 int igrab (struct inode*) ;
 scalar_t__ memcmp (int ,char*,int) ;

struct inode *gfs2_lookupi(struct inode *dir, const struct qstr *name,
      int is_root)
{
 struct super_block *sb = dir->i_sb;
 struct gfs2_inode *dip = GFS2_I(dir);
 struct gfs2_holder d_gh;
 int error = 0;
 struct inode *inode = ((void*)0);

 gfs2_holder_mark_uninitialized(&d_gh);
 if (!name->len || name->len > GFS2_FNAMESIZE)
  return ERR_PTR(-ENAMETOOLONG);

 if ((name->len == 1 && memcmp(name->name, ".", 1) == 0) ||
     (name->len == 2 && memcmp(name->name, "..", 2) == 0 &&
      dir == d_inode(sb->s_root))) {
  igrab(dir);
  return dir;
 }

 if (gfs2_glock_is_locked_by_me(dip->i_gl) == ((void*)0)) {
  error = gfs2_glock_nq_init(dip->i_gl, LM_ST_SHARED, 0, &d_gh);
  if (error)
   return ERR_PTR(error);
 }

 if (!is_root) {
  error = gfs2_permission(dir, MAY_EXEC);
  if (error)
   goto out;
 }

 inode = gfs2_dir_search(dir, name, 0);
 if (IS_ERR(inode))
  error = PTR_ERR(inode);
out:
 if (gfs2_holder_initialized(&d_gh))
  gfs2_glock_dq_uninit(&d_gh);
 if (error == -ENOENT)
  return ((void*)0);
 return inode ? inode : ERR_PTR(error);
}
