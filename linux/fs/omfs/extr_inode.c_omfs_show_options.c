
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ umode_t ;
struct seq_file {int dummy; } ;
struct omfs_sb_info {scalar_t__ s_dmask; scalar_t__ s_fmask; int s_gid; int s_uid; } ;
struct dentry {int d_sb; } ;


 struct omfs_sb_info* OMFS_SB (int ) ;
 int current_gid () ;
 int current_uid () ;
 scalar_t__ current_umask () ;
 scalar_t__ from_kgid_munged (int *,int ) ;
 scalar_t__ from_kuid_munged (int *,int ) ;
 int gid_eq (int ,int ) ;
 int init_user_ns ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int omfs_show_options(struct seq_file *m, struct dentry *root)
{
 struct omfs_sb_info *sbi = OMFS_SB(root->d_sb);
 umode_t cur_umask = current_umask();

 if (!uid_eq(sbi->s_uid, current_uid()))
  seq_printf(m, ",uid=%u",
      from_kuid_munged(&init_user_ns, sbi->s_uid));
 if (!gid_eq(sbi->s_gid, current_gid()))
  seq_printf(m, ",gid=%u",
      from_kgid_munged(&init_user_ns, sbi->s_gid));

 if (sbi->s_dmask == sbi->s_fmask) {
  if (sbi->s_fmask != cur_umask)
   seq_printf(m, ",umask=%o", sbi->s_fmask);
 } else {
  if (sbi->s_dmask != cur_umask)
   seq_printf(m, ",dmask=%o", sbi->s_dmask);
  if (sbi->s_fmask != cur_umask)
   seq_printf(m, ",fmask=%o", sbi->s_fmask);
 }

 return 0;
}
