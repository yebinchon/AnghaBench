
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct dentry {int d_sb; } ;


 int _ext4_show_options (struct seq_file*,int ,int ) ;

__attribute__((used)) static int ext4_show_options(struct seq_file *seq, struct dentry *root)
{
 return _ext4_show_options(seq, root->d_sb, 0);
}
