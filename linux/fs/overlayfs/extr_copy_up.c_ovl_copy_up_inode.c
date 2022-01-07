
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct path {struct dentry* dentry; } ;
struct TYPE_5__ {int size; int mode; } ;
struct TYPE_4__ {int dentry; } ;
struct ovl_copy_up_ctx {TYPE_2__ stat; scalar_t__ metacopy; int dentry; TYPE_1__ lowerpath; scalar_t__ origin; } ;
struct dentry {int d_inode; } ;


 int EIO ;
 int EOPNOTSUPP ;
 int OVL_XATTR_METACOPY ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ WARN_ON (int ) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 int ovl_check_setxattr (int ,struct dentry*,int ,int *,int ,int ) ;
 int ovl_copy_up_data (struct path*,struct path*,int ) ;
 int ovl_copy_xattr (int ,struct dentry*) ;
 int ovl_path_lowerdata (int ,struct path*) ;
 int ovl_path_upper (int ,struct path*) ;
 int ovl_set_attr (struct dentry*,TYPE_2__*) ;
 int ovl_set_origin (int ,int ,struct dentry*) ;
 int ovl_set_size (struct dentry*,TYPE_2__*) ;

__attribute__((used)) static int ovl_copy_up_inode(struct ovl_copy_up_ctx *c, struct dentry *temp)
{
 int err;





 if (S_ISREG(c->stat.mode) && !c->metacopy) {
  struct path upperpath, datapath;

  ovl_path_upper(c->dentry, &upperpath);
  if (WARN_ON(upperpath.dentry != ((void*)0)))
   return -EIO;
  upperpath.dentry = temp;

  ovl_path_lowerdata(c->dentry, &datapath);
  err = ovl_copy_up_data(&datapath, &upperpath, c->stat.size);
  if (err)
   return err;
 }

 err = ovl_copy_xattr(c->lowerpath.dentry, temp);
 if (err)
  return err;
 if (c->origin) {
  err = ovl_set_origin(c->dentry, c->lowerpath.dentry, temp);
  if (err)
   return err;
 }

 if (c->metacopy) {
  err = ovl_check_setxattr(c->dentry, temp, OVL_XATTR_METACOPY,
      ((void*)0), 0, -EOPNOTSUPP);
  if (err)
   return err;
 }

 inode_lock(temp->d_inode);
 if (c->metacopy)
  err = ovl_set_size(temp, &c->stat);
 if (!err)
  err = ovl_set_attr(temp, &c->stat);
 inode_unlock(temp->d_inode);

 return err;
}
