
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {struct dentry* s_root; int s_flags; struct ovl_fs* s_fs_info; int s_xattr; int s_magic; int * s_export_op; int s_time_gran; int s_stack_depth; int * s_op; int s_maxbytes; } ;
struct path {scalar_t__ dentry; int mnt; } ;
struct TYPE_6__ {int index; int nfs_export; scalar_t__ xino; scalar_t__ metacopy; int workdir; scalar_t__ upperdir; int lowerdir; } ;
struct ovl_fs {TYPE_3__ config; TYPE_2__* upper_mnt; int indexdir; int * workdir; scalar_t__ xino_bits; struct cred* creator_cred; } ;
struct ovl_entry {int dummy; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;
struct cred {int cap_effective; } ;
struct TYPE_5__ {TYPE_1__* mnt_sb; } ;
struct TYPE_4__ {int s_time_gran; int s_stack_depth; } ;


 scalar_t__ BITS_PER_LONG ;
 int CAP_SYS_RESOURCE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ovl_entry*) ;
 int MAX_LFS_FILESIZE ;
 int OVERLAYFS_SUPER_MAGIC ;
 int OVL_E_CONNECTED ;
 int OVL_IMPURE ;
 int OVL_WHITEOUTS ;
 scalar_t__ OVL_XINO_OFF ;
 int PTR_ERR (struct ovl_entry*) ;
 int SB_POSIXACL ;
 int SB_RDONLY ;
 int S_IFDIR ;
 int cap_lower (int ,int ) ;
 int d_inode (struct dentry*) ;
 struct dentry* d_make_root (int ) ;
 int dput (int *) ;
 int kfree (struct ovl_entry*) ;
 struct ovl_fs* kzalloc (int,int ) ;
 int mntput (int ) ;
 int ovl_check_overlapping_layers (struct super_block*,struct ovl_fs*) ;
 int ovl_dentry_lower (struct dentry*) ;
 int ovl_dentry_set_flag (int ,struct dentry*) ;
 int ovl_dentry_set_upper_alias (struct dentry*) ;
 int ovl_entry_stack_free (struct ovl_entry*) ;
 int ovl_export_operations ;
 int ovl_force_readonly (struct ovl_fs*) ;
 int ovl_free_fs (struct ovl_fs*) ;
 int ovl_get_indexdir (struct super_block*,struct ovl_fs*,struct ovl_entry*,struct path*) ;
 struct ovl_entry* ovl_get_lowerstack (struct super_block*,struct ovl_fs*) ;
 int ovl_get_upper (struct super_block*,struct ovl_fs*,struct path*) ;
 int ovl_get_workdir (struct super_block*,struct ovl_fs*,struct path*) ;
 int ovl_index_def ;
 int ovl_inode_init (int ,scalar_t__,int ,int *) ;
 scalar_t__ ovl_is_impuredir (scalar_t__) ;
 scalar_t__ ovl_metacopy_def ;
 int ovl_new_inode (struct super_block*,int ,int ) ;
 int ovl_nfs_export_def ;
 int ovl_parse_opt (char*,TYPE_3__*) ;
 int ovl_set_flag (int ,int ) ;
 int ovl_set_upperdata (int ) ;
 int ovl_super_operations ;
 int ovl_xattr_handlers ;
 scalar_t__ ovl_xino_def () ;
 int path_put (struct path*) ;
 int pr_err (char*) ;
 int pr_warn (char*) ;
 struct cred* prepare_creds () ;

__attribute__((used)) static int ovl_fill_super(struct super_block *sb, void *data, int silent)
{
 struct path upperpath = { };
 struct dentry *root_dentry;
 struct ovl_entry *oe;
 struct ovl_fs *ofs;
 struct cred *cred;
 int err;

 err = -ENOMEM;
 ofs = kzalloc(sizeof(struct ovl_fs), GFP_KERNEL);
 if (!ofs)
  goto out;

 ofs->creator_cred = cred = prepare_creds();
 if (!cred)
  goto out_err;

 ofs->config.index = ovl_index_def;
 ofs->config.nfs_export = ovl_nfs_export_def;
 ofs->config.xino = ovl_xino_def();
 ofs->config.metacopy = ovl_metacopy_def;
 err = ovl_parse_opt((char *) data, &ofs->config);
 if (err)
  goto out_err;

 err = -EINVAL;
 if (!ofs->config.lowerdir) {
  if (!silent)
   pr_err("overlayfs: missing 'lowerdir'\n");
  goto out_err;
 }

 sb->s_stack_depth = 0;
 sb->s_maxbytes = MAX_LFS_FILESIZE;

 if (ofs->config.xino != OVL_XINO_OFF)
  ofs->xino_bits = BITS_PER_LONG - 32;


 sb->s_op = &ovl_super_operations;

 if (ofs->config.upperdir) {
  if (!ofs->config.workdir) {
   pr_err("overlayfs: missing 'workdir'\n");
   goto out_err;
  }

  err = ovl_get_upper(sb, ofs, &upperpath);
  if (err)
   goto out_err;

  err = ovl_get_workdir(sb, ofs, &upperpath);
  if (err)
   goto out_err;

  if (!ofs->workdir)
   sb->s_flags |= SB_RDONLY;

  sb->s_stack_depth = ofs->upper_mnt->mnt_sb->s_stack_depth;
  sb->s_time_gran = ofs->upper_mnt->mnt_sb->s_time_gran;

 }
 oe = ovl_get_lowerstack(sb, ofs);
 err = PTR_ERR(oe);
 if (IS_ERR(oe))
  goto out_err;


 if (!ofs->upper_mnt)
  sb->s_flags |= SB_RDONLY;

 if (!(ovl_force_readonly(ofs)) && ofs->config.index) {
  err = ovl_get_indexdir(sb, ofs, oe, &upperpath);
  if (err)
   goto out_free_oe;


  if (!ofs->indexdir) {
   dput(ofs->workdir);
   ofs->workdir = ((void*)0);
   sb->s_flags |= SB_RDONLY;
  }

 }

 err = ovl_check_overlapping_layers(sb, ofs);
 if (err)
  goto out_free_oe;


 if (!ofs->indexdir) {
  ofs->config.index = 0;
  if (ofs->upper_mnt && ofs->config.nfs_export) {
   pr_warn("overlayfs: NFS export requires an index dir, falling back to nfs_export=off.\n");
   ofs->config.nfs_export = 0;
  }
 }

 if (ofs->config.metacopy && ofs->config.nfs_export) {
  pr_warn("overlayfs: NFS export is not supported with metadata only copy up, falling back to nfs_export=off.\n");
  ofs->config.nfs_export = 0;
 }

 if (ofs->config.nfs_export)
  sb->s_export_op = &ovl_export_operations;


 cap_lower(cred->cap_effective, CAP_SYS_RESOURCE);

 sb->s_magic = OVERLAYFS_SUPER_MAGIC;
 sb->s_xattr = ovl_xattr_handlers;
 sb->s_fs_info = ofs;
 sb->s_flags |= SB_POSIXACL;

 err = -ENOMEM;
 root_dentry = d_make_root(ovl_new_inode(sb, S_IFDIR, 0));
 if (!root_dentry)
  goto out_free_oe;

 root_dentry->d_fsdata = oe;

 mntput(upperpath.mnt);
 if (upperpath.dentry) {
  ovl_dentry_set_upper_alias(root_dentry);
  if (ovl_is_impuredir(upperpath.dentry))
   ovl_set_flag(OVL_IMPURE, d_inode(root_dentry));
 }


 ovl_set_flag(OVL_WHITEOUTS, d_inode(root_dentry));
 ovl_dentry_set_flag(OVL_E_CONNECTED, root_dentry);
 ovl_set_upperdata(d_inode(root_dentry));
 ovl_inode_init(d_inode(root_dentry), upperpath.dentry,
         ovl_dentry_lower(root_dentry), ((void*)0));

 sb->s_root = root_dentry;

 return 0;

out_free_oe:
 ovl_entry_stack_free(oe);
 kfree(oe);
out_err:
 path_put(&upperpath);
 ovl_free_fs(ofs);
out:
 return err;
}
