
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct superblock_security_struct {int flags; int def_sid; int mntpoint_sid; int sid; } ;
struct super_block {TYPE_1__* s_type; int s_id; int s_root; struct superblock_security_struct* s_security; } ;
struct selinux_mnt_opts {scalar_t__ defcontext; scalar_t__ rootcontext; scalar_t__ context; scalar_t__ fscontext; } ;
struct inode_security_struct {int sid; } ;
struct TYPE_2__ {int name; } ;


 int CONTEXT_MNT ;
 int DEFCONTEXT_MNT ;
 int EINVAL ;
 int FSCONTEXT_MNT ;
 int ROOTCONTEXT_MNT ;
 int SE_SBINITIALIZED ;
 struct inode_security_struct* backing_inode_security (int ) ;
 scalar_t__ bad_option (struct superblock_security_struct*,int ,int ,int ) ;
 int parse_sid (struct super_block*,scalar_t__,int *) ;
 int pr_warn (char*,int ,int ) ;

__attribute__((used)) static int selinux_sb_remount(struct super_block *sb, void *mnt_opts)
{
 struct selinux_mnt_opts *opts = mnt_opts;
 struct superblock_security_struct *sbsec = sb->s_security;
 u32 sid;
 int rc;

 if (!(sbsec->flags & SE_SBINITIALIZED))
  return 0;

 if (!opts)
  return 0;

 if (opts->fscontext) {
  rc = parse_sid(sb, opts->fscontext, &sid);
  if (rc)
   return rc;
  if (bad_option(sbsec, FSCONTEXT_MNT, sbsec->sid, sid))
   goto out_bad_option;
 }
 if (opts->context) {
  rc = parse_sid(sb, opts->context, &sid);
  if (rc)
   return rc;
  if (bad_option(sbsec, CONTEXT_MNT, sbsec->mntpoint_sid, sid))
   goto out_bad_option;
 }
 if (opts->rootcontext) {
  struct inode_security_struct *root_isec;
  root_isec = backing_inode_security(sb->s_root);
  rc = parse_sid(sb, opts->rootcontext, &sid);
  if (rc)
   return rc;
  if (bad_option(sbsec, ROOTCONTEXT_MNT, root_isec->sid, sid))
   goto out_bad_option;
 }
 if (opts->defcontext) {
  rc = parse_sid(sb, opts->defcontext, &sid);
  if (rc)
   return rc;
  if (bad_option(sbsec, DEFCONTEXT_MNT, sbsec->def_sid, sid))
   goto out_bad_option;
 }
 return 0;

out_bad_option:
 pr_warn("SELinux: unable to change security options "
        "during remount (dev %s, type=%s)\n", sb->s_id,
        sb->s_type->name);
 return -EINVAL;
}
