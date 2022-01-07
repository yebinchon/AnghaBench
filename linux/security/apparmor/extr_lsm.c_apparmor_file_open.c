
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path_cond {int member_1; int member_0; } ;
struct inode {int i_mode; int i_uid; } ;
struct TYPE_4__ {int dentry; } ;
struct file {TYPE_2__ f_path; int f_cred; } ;
struct aa_label {int dummy; } ;
struct aa_file_ctx {int allow; } ;
struct TYPE_3__ {scalar_t__ in_execve; } ;


 int AA_EXEC_MMAP ;
 int MAY_EXEC ;
 int MAY_READ ;
 int OP_OPEN ;
 struct aa_label* aa_get_newest_cred_label (int ) ;
 int aa_map_file_to_perms (struct file*) ;
 int aa_path_perm (int ,struct aa_label*,TYPE_2__*,int ,int,struct path_cond*) ;
 int aa_put_label (struct aa_label*) ;
 TYPE_1__* current ;
 struct aa_file_ctx* file_ctx (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int path_mediated_fs (int ) ;
 int unconfined (struct aa_label*) ;

__attribute__((used)) static int apparmor_file_open(struct file *file)
{
 struct aa_file_ctx *fctx = file_ctx(file);
 struct aa_label *label;
 int error = 0;

 if (!path_mediated_fs(file->f_path.dentry))
  return 0;






 if (current->in_execve) {
  fctx->allow = MAY_EXEC | MAY_READ | AA_EXEC_MMAP;
  return 0;
 }

 label = aa_get_newest_cred_label(file->f_cred);
 if (!unconfined(label)) {
  struct inode *inode = file_inode(file);
  struct path_cond cond = { inode->i_uid, inode->i_mode };

  error = aa_path_perm(OP_OPEN, label, &file->f_path, 0,
         aa_map_file_to_perms(file), &cond);

  fctx->allow = aa_map_file_to_perms(file);
 }
 aa_put_label(label);

 return error;
}
