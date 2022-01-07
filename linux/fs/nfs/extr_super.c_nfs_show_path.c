
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct dentry {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

int nfs_show_path(struct seq_file *m, struct dentry *dentry)
{
 seq_puts(m, "/");
 return 0;
}
