
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;


 int call_int_hook (int ,int ,struct seq_file*,struct super_block*) ;
 int sb_show_options ;

int security_sb_show_options(struct seq_file *m, struct super_block *sb)
{
 return call_int_hook(sb_show_options, 0, m, sb);
}
