
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct isofs_sb_info {int s_check; int s_mapping; int s_session; int s_sbsector; int s_dmode; int s_fmode; TYPE_1__* s_nls_iocharset; int s_gid; scalar_t__ s_gid_set; int s_uid; scalar_t__ s_uid_set; scalar_t__ s_utf8; scalar_t__ s_showassoc; scalar_t__ s_overriderockperm; scalar_t__ s_nocompress; scalar_t__ s_hide; scalar_t__ s_cruft; int s_joliet_level; int s_rock; } ;
struct dentry {TYPE_2__* d_sb; } ;
struct TYPE_4__ {int s_blocksize; } ;
struct TYPE_3__ {int charset; } ;


 int CONFIG_NLS_DEFAULT ;
 int ISOFS_INVALID_MODE ;
 struct isofs_sb_info* ISOFS_SB (TYPE_2__*) ;
 int from_kgid_munged (int *,int ) ;
 int from_kuid_munged (int *,int ) ;
 int init_user_ns ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;
 scalar_t__ strcmp (int,int ) ;

__attribute__((used)) static int isofs_show_options(struct seq_file *m, struct dentry *root)
{
 struct isofs_sb_info *sbi = ISOFS_SB(root->d_sb);

 if (!sbi->s_rock) seq_puts(m, ",norock");
 else if (!sbi->s_joliet_level) seq_puts(m, ",nojoliet");
 if (sbi->s_cruft) seq_puts(m, ",cruft");
 if (sbi->s_hide) seq_puts(m, ",hide");
 if (sbi->s_nocompress) seq_puts(m, ",nocompress");
 if (sbi->s_overriderockperm) seq_puts(m, ",overriderockperm");
 if (sbi->s_showassoc) seq_puts(m, ",showassoc");
 if (sbi->s_utf8) seq_puts(m, ",utf8");

 if (sbi->s_check) seq_printf(m, ",check=%c", sbi->s_check);
 if (sbi->s_mapping) seq_printf(m, ",map=%c", sbi->s_mapping);
 if (sbi->s_session != 255) seq_printf(m, ",session=%u", sbi->s_session - 1);
 if (sbi->s_sbsector != -1) seq_printf(m, ",sbsector=%u", sbi->s_sbsector);

 if (root->d_sb->s_blocksize != 1024)
  seq_printf(m, ",blocksize=%lu", root->d_sb->s_blocksize);

 if (sbi->s_uid_set)
  seq_printf(m, ",uid=%u",
      from_kuid_munged(&init_user_ns, sbi->s_uid));
 if (sbi->s_gid_set)
  seq_printf(m, ",gid=%u",
      from_kgid_munged(&init_user_ns, sbi->s_gid));

 if (sbi->s_dmode != ISOFS_INVALID_MODE)
  seq_printf(m, ",dmode=%o", sbi->s_dmode);
 if (sbi->s_fmode != ISOFS_INVALID_MODE)
  seq_printf(m, ",fmode=%o", sbi->s_fmode);






 return 0;
}
