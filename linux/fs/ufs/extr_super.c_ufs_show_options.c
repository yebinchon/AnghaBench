
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_sb_info {unsigned int s_mount_opt; } ;
struct seq_file {int dummy; } ;
struct match_token {unsigned int token; int pattern; } ;
struct dentry {int d_sb; } ;


 int BUG_ON (int) ;
 unsigned int Opt_err ;
 unsigned int Opt_onerror_panic ;
 unsigned int UFS_MOUNT_ONERROR ;
 unsigned int UFS_MOUNT_UFSTYPE ;
 struct ufs_sb_info* UFS_SB (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 struct match_token* tokens ;

__attribute__((used)) static int ufs_show_options(struct seq_file *seq, struct dentry *root)
{
 struct ufs_sb_info *sbi = UFS_SB(root->d_sb);
 unsigned mval = sbi->s_mount_opt & UFS_MOUNT_UFSTYPE;
 const struct match_token *tp = tokens;

 while (tp->token != Opt_onerror_panic && tp->token != mval)
  ++tp;
 BUG_ON(tp->token == Opt_onerror_panic);
 seq_printf(seq, ",%s", tp->pattern);

 mval = sbi->s_mount_opt & UFS_MOUNT_ONERROR;
 while (tp->token != Opt_err && tp->token != mval)
  ++tp;
 BUG_ON(tp->token == Opt_err);
 seq_printf(seq, ",%s", tp->pattern);

 return 0;
}
