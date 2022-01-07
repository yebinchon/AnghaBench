
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int __gfs2_glocks_open (struct inode*,struct file*,int *) ;
 int gfs2_glstats_seq_ops ;

__attribute__((used)) static int gfs2_glstats_open(struct inode *inode, struct file *file)
{
 return __gfs2_glocks_open(inode, file, &gfs2_glstats_seq_ops);
}
