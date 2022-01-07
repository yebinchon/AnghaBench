
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct ovl_fs {scalar_t__ tmpfile; } ;
struct TYPE_15__ {int name; } ;
struct TYPE_12__ {int nlink; int mode; } ;
struct TYPE_11__ {int dentry; } ;
struct ovl_copy_up_ctx {int indexed; int origin; TYPE_8__ destname; TYPE_3__* dentry; int pstat; TYPE_3__* destdir; TYPE_2__ stat; int parent; TYPE_1__ lowerpath; void* workdir; } ;
struct inode {int dummy; } ;
struct TYPE_14__ {struct ovl_fs* s_fs_info; } ;
struct TYPE_13__ {TYPE_7__* d_sb; } ;


 int EIO ;
 int OVL_INDEX ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct inode* d_inode (TYPE_3__*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int kfree (int ) ;
 int ovl_copy_up_tmpfile (struct ovl_copy_up_ctx*) ;
 int ovl_copy_up_workdir (struct ovl_copy_up_ctx*) ;
 int ovl_dentry_set_upper_alias (TYPE_3__*) ;
 int ovl_get_index_name (int ,TYPE_8__*) ;
 void* ovl_indexdir (TYPE_7__*) ;
 scalar_t__ ovl_need_index (TYPE_3__*) ;
 int ovl_set_flag (int ,struct inode*) ;
 int ovl_set_impure (int ,TYPE_3__*) ;
 int ovl_set_nlink_upper (TYPE_3__*) ;
 int ovl_set_timestamps (TYPE_3__*,int *) ;

__attribute__((used)) static int ovl_do_copy_up(struct ovl_copy_up_ctx *c)
{
 int err;
 struct ovl_fs *ofs = c->dentry->d_sb->s_fs_info;
 bool to_index = 0;







 if (ovl_need_index(c->dentry)) {
  c->indexed = 1;
  if (S_ISDIR(c->stat.mode))
   c->workdir = ovl_indexdir(c->dentry->d_sb);
  else
   to_index = 1;
 }

 if (S_ISDIR(c->stat.mode) || c->stat.nlink == 1 || to_index)
  c->origin = 1;

 if (to_index) {
  c->destdir = ovl_indexdir(c->dentry->d_sb);
  err = ovl_get_index_name(c->lowerpath.dentry, &c->destname);
  if (err)
   return err;
 } else if (WARN_ON(!c->parent)) {

  return -EIO;
 } else {




  err = ovl_set_impure(c->parent, c->destdir);
  if (err)
   return err;
 }


 if (S_ISREG(c->stat.mode) && ofs->tmpfile)
  err = ovl_copy_up_tmpfile(c);
 else
  err = ovl_copy_up_workdir(c);
 if (err)
  goto out;

 if (c->indexed)
  ovl_set_flag(OVL_INDEX, d_inode(c->dentry));

 if (to_index) {

  err = ovl_set_nlink_upper(c->dentry);
 } else {
  struct inode *udir = d_inode(c->destdir);


  inode_lock(udir);
  ovl_set_timestamps(c->destdir, &c->pstat);
  inode_unlock(udir);

  ovl_dentry_set_upper_alias(c->dentry);
 }

out:
 if (to_index)
  kfree(c->destname.name);
 return err;
}
