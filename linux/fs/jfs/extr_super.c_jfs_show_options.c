
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct jfs_sb_info {int umask; int flag; TYPE_1__* nls_tab; int minblks_trim; int gid; int uid; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {int charset; } ;


 int JFS_DISCARD ;
 int JFS_ERR_CONTINUE ;
 int JFS_ERR_PANIC ;
 int JFS_GRPQUOTA ;
 int JFS_NOINTEGRITY ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int JFS_USRQUOTA ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 scalar_t__ gid_valid (int ) ;
 int init_user_ns ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_puts (struct seq_file*,char*) ;
 scalar_t__ uid_valid (int ) ;

__attribute__((used)) static int jfs_show_options(struct seq_file *seq, struct dentry *root)
{
 struct jfs_sb_info *sbi = JFS_SBI(root->d_sb);

 if (uid_valid(sbi->uid))
  seq_printf(seq, ",uid=%d", from_kuid(&init_user_ns, sbi->uid));
 if (gid_valid(sbi->gid))
  seq_printf(seq, ",gid=%d", from_kgid(&init_user_ns, sbi->gid));
 if (sbi->umask != -1)
  seq_printf(seq, ",umask=%03o", sbi->umask);
 if (sbi->flag & JFS_NOINTEGRITY)
  seq_puts(seq, ",nointegrity");
 if (sbi->flag & JFS_DISCARD)
  seq_printf(seq, ",discard=%u", sbi->minblks_trim);
 if (sbi->nls_tab)
  seq_printf(seq, ",iocharset=%s", sbi->nls_tab->charset);
 if (sbi->flag & JFS_ERR_CONTINUE)
  seq_printf(seq, ",errors=continue");
 if (sbi->flag & JFS_ERR_PANIC)
  seq_printf(seq, ",errors=panic");
 return 0;
}
