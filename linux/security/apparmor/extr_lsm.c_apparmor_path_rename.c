
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path_cond {int member_1; int member_0; } ;
struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int i_mode; int i_uid; } ;


 int AA_MAY_CREATE ;
 int AA_MAY_DELETE ;
 int AA_MAY_GETATTR ;
 int AA_MAY_SETATTR ;
 int MAY_READ ;
 int MAY_WRITE ;
 int OP_RENAME_DEST ;
 int OP_RENAME_SRC ;
 int aa_path_perm (int ,struct aa_label*,struct path*,int ,int,struct path_cond*) ;
 struct aa_label* begin_current_label_crit_section () ;
 TYPE_1__* d_backing_inode (struct dentry*) ;
 int end_current_label_crit_section (struct aa_label*) ;
 int path_mediated_fs (struct dentry*) ;
 int unconfined (struct aa_label*) ;

__attribute__((used)) static int apparmor_path_rename(const struct path *old_dir, struct dentry *old_dentry,
    const struct path *new_dir, struct dentry *new_dentry)
{
 struct aa_label *label;
 int error = 0;

 if (!path_mediated_fs(old_dentry))
  return 0;

 label = begin_current_label_crit_section();
 if (!unconfined(label)) {
  struct path old_path = { .mnt = old_dir->mnt,
      .dentry = old_dentry };
  struct path new_path = { .mnt = new_dir->mnt,
      .dentry = new_dentry };
  struct path_cond cond = { d_backing_inode(old_dentry)->i_uid,
       d_backing_inode(old_dentry)->i_mode
  };

  error = aa_path_perm(OP_RENAME_SRC, label, &old_path, 0,
         MAY_READ | AA_MAY_GETATTR | MAY_WRITE |
         AA_MAY_SETATTR | AA_MAY_DELETE,
         &cond);
  if (!error)
   error = aa_path_perm(OP_RENAME_DEST, label, &new_path,
          0, MAY_WRITE | AA_MAY_SETATTR |
          AA_MAY_CREATE, &cond);

 }
 end_current_label_crit_section(label);

 return error;
}
