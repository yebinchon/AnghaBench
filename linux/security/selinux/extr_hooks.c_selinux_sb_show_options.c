
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct superblock_security_struct {int flags; TYPE_1__* sb; int def_sid; int mntpoint_sid; int sid; } ;
struct super_block {struct superblock_security_struct* s_security; } ;
struct seq_file {int dummy; } ;
struct inode_security_struct {int sid; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int initialized; } ;
struct TYPE_3__ {struct dentry* s_root; } ;


 int CONTEXT_MNT ;
 int CONTEXT_STR ;
 int DEFCONTEXT_MNT ;
 int DEFCONTEXT_STR ;
 int FSCONTEXT_MNT ;
 int FSCONTEXT_STR ;
 int ROOTCONTEXT_MNT ;
 int ROOTCONTEXT_STR ;
 int SBLABEL_MNT ;
 int SECLABEL_STR ;
 int SE_SBINITIALIZED ;
 struct inode_security_struct* backing_inode_security (struct dentry*) ;
 TYPE_2__ selinux_state ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,int ) ;
 int show_sid (struct seq_file*,int ) ;

__attribute__((used)) static int selinux_sb_show_options(struct seq_file *m, struct super_block *sb)
{
 struct superblock_security_struct *sbsec = sb->s_security;
 int rc;

 if (!(sbsec->flags & SE_SBINITIALIZED))
  return 0;

 if (!selinux_state.initialized)
  return 0;

 if (sbsec->flags & FSCONTEXT_MNT) {
  seq_putc(m, ',');
  seq_puts(m, FSCONTEXT_STR);
  rc = show_sid(m, sbsec->sid);
  if (rc)
   return rc;
 }
 if (sbsec->flags & CONTEXT_MNT) {
  seq_putc(m, ',');
  seq_puts(m, CONTEXT_STR);
  rc = show_sid(m, sbsec->mntpoint_sid);
  if (rc)
   return rc;
 }
 if (sbsec->flags & DEFCONTEXT_MNT) {
  seq_putc(m, ',');
  seq_puts(m, DEFCONTEXT_STR);
  rc = show_sid(m, sbsec->def_sid);
  if (rc)
   return rc;
 }
 if (sbsec->flags & ROOTCONTEXT_MNT) {
  struct dentry *root = sbsec->sb->s_root;
  struct inode_security_struct *isec = backing_inode_security(root);
  seq_putc(m, ',');
  seq_puts(m, ROOTCONTEXT_STR);
  rc = show_sid(m, isec->sid);
  if (rc)
   return rc;
 }
 if (sbsec->flags & SBLABEL_MNT) {
  seq_putc(m, ',');
  seq_puts(m, SECLABEL_STR);
 }
 return 0;
}
