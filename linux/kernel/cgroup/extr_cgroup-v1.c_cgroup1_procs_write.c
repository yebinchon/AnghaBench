
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_open_file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int __cgroup1_procs_write (struct kernfs_open_file*,char*,size_t,int ,int) ;

__attribute__((used)) static ssize_t cgroup1_procs_write(struct kernfs_open_file *of,
       char *buf, size_t nbytes, loff_t off)
{
 return __cgroup1_procs_write(of, buf, nbytes, off, 1);
}
