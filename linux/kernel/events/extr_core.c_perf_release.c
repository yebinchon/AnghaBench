
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int perf_event_release_kernel (int ) ;

__attribute__((used)) static int perf_release(struct inode *inode, struct file *file)
{
 perf_event_release_kernel(file->private_data);
 return 0;
}
