
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int i_ino; } ;


 int AAFS_NAME ;
 TYPE_1__* d_inode (struct dentry*) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int aafs_show_path(struct seq_file *seq, struct dentry *dentry)
{
 seq_printf(seq, "%s:[%lu]", AAFS_NAME, d_inode(dentry)->i_ino);
 return 0;
}
