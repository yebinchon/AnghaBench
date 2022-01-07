
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int proc_single_show ;
 int single_open (struct file*,int ,struct inode*) ;

__attribute__((used)) static int proc_single_open(struct inode *inode, struct file *filp)
{
 return single_open(filp, proc_single_show, inode);
}
