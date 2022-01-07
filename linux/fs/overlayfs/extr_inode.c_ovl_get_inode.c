
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ovl_path {TYPE_1__* layer; struct dentry* dentry; } ;
struct ovl_inode_params {int numlower; int redirect; int index; int lowerdata; scalar_t__ newinode; struct ovl_path* lowerpath; struct dentry* upperdentry; } ;
struct inode {int i_nlink; int i_state; unsigned long i_ino; int i_rdev; int i_mode; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int redirect; } ;
struct TYPE_3__ {int fsid; } ;


 int EEXIST ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int ESTALE ;
 int I_NEW ;
 int OVL_CONST_INO ;
 TYPE_2__* OVL_I (struct inode*) ;
 int OVL_IMPURE ;
 int OVL_INDEX ;
 int OVL_UPPERDATA ;
 int OVL_WHITEOUTS ;
 int S_ISDIR (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int iput (struct inode*) ;
 int kfree (int ) ;
 struct inode* new_inode (struct super_block*) ;
 int ovl_check_metacopy_xattr (struct dentry*) ;
 scalar_t__ ovl_check_origin_xattr (struct dentry*) ;
 int ovl_fill_inode (struct inode*,int ,int ,unsigned long,int) ;
 unsigned int ovl_get_nlink (struct dentry*,struct dentry*,unsigned int) ;
 int ovl_hash_bylower (struct super_block*,struct dentry*,struct dentry*,int ) ;
 struct inode* ovl_iget5 (struct super_block*,scalar_t__,struct inode*) ;
 int ovl_inode_init (struct inode*,struct dentry*,struct dentry*,int ) ;
 scalar_t__ ovl_is_impuredir (struct dentry*) ;
 int ovl_set_flag (int ,struct inode*) ;
 int ovl_verify_inode (struct inode*,struct dentry*,struct dentry*,int) ;
 int pr_warn_ratelimited (char*,int) ;
 int set_nlink (struct inode*,unsigned int) ;
 int unlock_new_inode (struct inode*) ;

struct inode *ovl_get_inode(struct super_block *sb,
       struct ovl_inode_params *oip)
{
 struct dentry *upperdentry = oip->upperdentry;
 struct ovl_path *lowerpath = oip->lowerpath;
 struct inode *realinode = upperdentry ? d_inode(upperdentry) : ((void*)0);
 struct inode *inode;
 struct dentry *lowerdentry = lowerpath ? lowerpath->dentry : ((void*)0);
 bool bylower = ovl_hash_bylower(sb, upperdentry, lowerdentry,
     oip->index);
 int fsid = bylower ? oip->lowerpath->layer->fsid : 0;
 bool is_dir, metacopy = 0;
 unsigned long ino = 0;
 int err = oip->newinode ? -EEXIST : -ENOMEM;

 if (!realinode)
  realinode = d_inode(lowerdentry);





 is_dir = S_ISDIR(realinode->i_mode);
 if (upperdentry || bylower) {
  struct inode *key = d_inode(bylower ? lowerdentry :
            upperdentry);
  unsigned int nlink = is_dir ? 1 : realinode->i_nlink;

  inode = ovl_iget5(sb, oip->newinode, key);
  if (!inode)
   goto out_err;
  if (!(inode->i_state & I_NEW)) {




   if (!ovl_verify_inode(inode, lowerdentry, upperdentry,
           1)) {
    iput(inode);
    err = -ESTALE;
    goto out_err;
   }

   dput(upperdentry);
   kfree(oip->redirect);
   goto out;
  }


  if (!is_dir)
   nlink = ovl_get_nlink(lowerdentry, upperdentry, nlink);
  set_nlink(inode, nlink);
  ino = key->i_ino;
 } else {

  inode = new_inode(sb);
  if (!inode) {
   err = -ENOMEM;
   goto out_err;
  }
 }
 ovl_fill_inode(inode, realinode->i_mode, realinode->i_rdev, ino, fsid);
 ovl_inode_init(inode, upperdentry, lowerdentry, oip->lowerdata);

 if (upperdentry && ovl_is_impuredir(upperdentry))
  ovl_set_flag(OVL_IMPURE, inode);

 if (oip->index)
  ovl_set_flag(OVL_INDEX, inode);

 if (upperdentry) {
  err = ovl_check_metacopy_xattr(upperdentry);
  if (err < 0)
   goto out_err;
  metacopy = err;
  if (!metacopy)
   ovl_set_flag(OVL_UPPERDATA, inode);
 }

 OVL_I(inode)->redirect = oip->redirect;

 if (bylower)
  ovl_set_flag(OVL_CONST_INO, inode);


 if (is_dir) {
  if (((upperdentry && lowerdentry) || oip->numlower > 1) ||
      ovl_check_origin_xattr(upperdentry ?: lowerdentry)) {
   ovl_set_flag(OVL_WHITEOUTS, inode);
  }
 }

 if (inode->i_state & I_NEW)
  unlock_new_inode(inode);
out:
 return inode;

out_err:
 pr_warn_ratelimited("overlayfs: failed to get inode (%i)\n", err);
 inode = ERR_PTR(err);
 goto out;
}
