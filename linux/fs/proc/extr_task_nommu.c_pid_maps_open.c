
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int maps_open (struct inode*,struct file*,int *) ;
 int proc_pid_maps_ops ;

__attribute__((used)) static int pid_maps_open(struct inode *inode, struct file *file)
{
 return maps_open(inode, file, &proc_pid_maps_ops);
}
