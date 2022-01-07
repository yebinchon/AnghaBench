
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct seq_file {struct super_block* private; } ;
struct reiserfs_sb_info {int dummy; } ;


 struct reiserfs_sb_info* REISERFS_SB (struct super_block*) ;
 int SFP (int ) ;
 int SFPF (int ) ;
 int bmap ;
 int call ;
 int free_block ;
 int in_journal_hint ;
 int in_journal_nohint ;
 int retry ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int stolen ;
 int wait ;

__attribute__((used)) static int show_bitmap(struct seq_file *m, void *unused)
{
 struct super_block *sb = m->private;
 struct reiserfs_sb_info *r = REISERFS_SB(sb);

 seq_printf(m, "free_block: %lu\n"
     "  scan_bitmap:"
     "          wait"
     "          bmap"
     "         retry"
     "        stolen"
     "  journal_hint"
     "journal_nohint"
     "\n"
     " %14lu"
     " %14lu"
     " %14lu"
     " %14lu"
     " %14lu"
     " %14lu"
     " %14lu"
     "\n",
     SFP(free_block),
     SFPF(call),
     SFPF(wait),
     SFPF(bmap),
     SFPF(retry),
     SFPF(stolen),
     SFPF(in_journal_hint), SFPF(in_journal_nohint));

 return 0;
}
