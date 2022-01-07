
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int dummy; } ;
struct file {int dummy; } ;


 int ENOMEM ;
 scalar_t__ __seq_open_private (struct file*,struct seq_operations const*,int) ;

int seq_open_private(struct file *filp, const struct seq_operations *ops,
  int psize)
{
 return __seq_open_private(filp, ops, psize) ? 0 : -ENOMEM;
}
