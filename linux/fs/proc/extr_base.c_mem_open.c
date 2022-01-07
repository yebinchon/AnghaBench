
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int FMODE_UNSIGNED_OFFSET ;
 int PTRACE_MODE_ATTACH ;
 int __mem_open (struct inode*,struct file*,int ) ;

__attribute__((used)) static int mem_open(struct inode *inode, struct file *file)
{
 int ret = __mem_open(inode, file, PTRACE_MODE_ATTACH);


 file->f_mode |= FMODE_UNSIGNED_OFFSET;

 return ret;
}
