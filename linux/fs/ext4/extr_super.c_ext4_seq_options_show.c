
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct seq_file {struct super_block* private; } ;


 int _ext4_show_options (struct seq_file*,struct super_block*,int) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int seq_puts (struct seq_file*,char*) ;

int ext4_seq_options_show(struct seq_file *seq, void *offset)
{
 struct super_block *sb = seq->private;
 int rc;

 seq_puts(seq, sb_rdonly(sb) ? "ro" : "rw");
 rc = _ext4_show_options(seq, sb, 1);
 seq_puts(seq, "\n");
 return rc;
}
