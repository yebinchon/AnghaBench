
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dentry; } ;
struct perf_addr_filter {unsigned long offset; unsigned long size; TYPE_1__ path; } ;
struct file {int dummy; } ;


 scalar_t__ d_inode (int ) ;
 scalar_t__ file_inode (struct file*) ;

__attribute__((used)) static bool perf_addr_filter_match(struct perf_addr_filter *filter,
         struct file *file, unsigned long offset,
         unsigned long size)
{

 if (!filter->path.dentry)
  return 0;

 if (d_inode(filter->path.dentry) != file_inode(file))
  return 0;

 if (filter->offset > offset + size)
  return 0;

 if (filter->offset + filter->size < offset)
  return 0;

 return 1;
}
