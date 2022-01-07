
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int PTRACE_MODE_READ ;
 int __mem_open (struct inode*,struct file*,int ) ;

__attribute__((used)) static int environ_open(struct inode *inode, struct file *file)
{
 return __mem_open(inode, file, PTRACE_MODE_READ);
}
