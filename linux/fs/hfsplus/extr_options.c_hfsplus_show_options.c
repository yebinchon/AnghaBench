
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct hfsplus_sb_info {scalar_t__ creator; scalar_t__ type; scalar_t__ part; scalar_t__ session; int flags; TYPE_1__* nls; int gid; int uid; int umask; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {scalar_t__ charset; } ;


 scalar_t__ HFSPLUS_DEF_CR_TYPE ;
 struct hfsplus_sb_info* HFSPLUS_SB (int ) ;
 int HFSPLUS_SB_NOBARRIER ;
 int HFSPLUS_SB_NODECOMPOSE ;
 int from_kgid_munged (int *,int ) ;
 int from_kuid_munged (int *,int ) ;
 int init_user_ns ;
 int seq_printf (struct seq_file*,char*,scalar_t__,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int seq_show_option_n (struct seq_file*,char*,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;

int hfsplus_show_options(struct seq_file *seq, struct dentry *root)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(root->d_sb);

 if (sbi->creator != HFSPLUS_DEF_CR_TYPE)
  seq_show_option_n(seq, "creator", (char *)&sbi->creator, 4);
 if (sbi->type != HFSPLUS_DEF_CR_TYPE)
  seq_show_option_n(seq, "type", (char *)&sbi->type, 4);
 seq_printf(seq, ",umask=%o,uid=%u,gid=%u", sbi->umask,
   from_kuid_munged(&init_user_ns, sbi->uid),
   from_kgid_munged(&init_user_ns, sbi->gid));
 if (sbi->part >= 0)
  seq_printf(seq, ",part=%u", sbi->part);
 if (sbi->session >= 0)
  seq_printf(seq, ",session=%u", sbi->session);
 if (sbi->nls)
  seq_printf(seq, ",nls=%s", sbi->nls->charset);
 if (test_bit(HFSPLUS_SB_NODECOMPOSE, &sbi->flags))
  seq_puts(seq, ",nodecompose");
 if (test_bit(HFSPLUS_SB_NOBARRIER, &sbi->flags))
  seq_puts(seq, ",nobarrier");
 return 0;
}
