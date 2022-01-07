
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct hfs_sb_info {scalar_t__ s_creator; scalar_t__ s_type; int s_file_umask; int s_dir_umask; scalar_t__ s_quiet; TYPE_2__* nls_io; TYPE_1__* nls_disk; int session; int part; int s_gid; int s_uid; } ;
struct dentry {int d_sb; } ;
struct TYPE_4__ {int charset; } ;
struct TYPE_3__ {int charset; } ;


 struct hfs_sb_info* HFS_SB (int ) ;
 scalar_t__ cpu_to_be32 (int) ;
 int from_kgid_munged (int *,int ) ;
 int from_kuid_munged (int *,int ) ;
 int init_user_ns ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_show_option_n (struct seq_file*,char*,char*,int) ;

__attribute__((used)) static int hfs_show_options(struct seq_file *seq, struct dentry *root)
{
 struct hfs_sb_info *sbi = HFS_SB(root->d_sb);

 if (sbi->s_creator != cpu_to_be32(0x3f3f3f3f))
  seq_show_option_n(seq, "creator", (char *)&sbi->s_creator, 4);
 if (sbi->s_type != cpu_to_be32(0x3f3f3f3f))
  seq_show_option_n(seq, "type", (char *)&sbi->s_type, 4);
 seq_printf(seq, ",uid=%u,gid=%u",
   from_kuid_munged(&init_user_ns, sbi->s_uid),
   from_kgid_munged(&init_user_ns, sbi->s_gid));
 if (sbi->s_file_umask != 0133)
  seq_printf(seq, ",file_umask=%o", sbi->s_file_umask);
 if (sbi->s_dir_umask != 0022)
  seq_printf(seq, ",dir_umask=%o", sbi->s_dir_umask);
 if (sbi->part >= 0)
  seq_printf(seq, ",part=%u", sbi->part);
 if (sbi->session >= 0)
  seq_printf(seq, ",session=%u", sbi->session);
 if (sbi->nls_disk)
  seq_printf(seq, ",codepage=%s", sbi->nls_disk->charset);
 if (sbi->nls_io)
  seq_printf(seq, ",iocharset=%s", sbi->nls_io->charset);
 if (sbi->s_quiet)
  seq_printf(seq, ",quiet");
 return 0;
}
