
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct proc_dir_entry {void* data; int * proc_iops; } ;


 int S_IALLUGO ;
 int S_IFMT ;
 int S_IFREG ;
 int S_IRUGO ;
 int S_ISREG (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct proc_dir_entry* __proc_create (struct proc_dir_entry**,char const*,int,int) ;
 int proc_file_inode_operations ;

struct proc_dir_entry *proc_create_reg(const char *name, umode_t mode,
  struct proc_dir_entry **parent, void *data)
{
 struct proc_dir_entry *p;

 if ((mode & S_IFMT) == 0)
  mode |= S_IFREG;
 if ((mode & S_IALLUGO) == 0)
  mode |= S_IRUGO;
 if (WARN_ON_ONCE(!S_ISREG(mode)))
  return ((void*)0);

 p = __proc_create(parent, name, mode, 1);
 if (p) {
  p->proc_iops = &proc_file_inode_operations;
  p->data = data;
 }
 return p;
}
