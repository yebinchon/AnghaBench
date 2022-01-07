
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int seq_show ;
 int single_open (struct file*,int ,struct inode*) ;

__attribute__((used)) static int seq_fdinfo_open(struct inode *inode, struct file *file)
{
 return single_open(file, seq_show, inode);
}
