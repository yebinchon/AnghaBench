
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kallsym_iter {int show_value; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENOMEM ;
 struct kallsym_iter* __seq_open_private (struct file*,int *,int) ;
 int kallsyms_op ;
 int kallsyms_show_value () ;
 int reset_iter (struct kallsym_iter*,int ) ;

__attribute__((used)) static int kallsyms_open(struct inode *inode, struct file *file)
{





 struct kallsym_iter *iter;
 iter = __seq_open_private(file, &kallsyms_op, sizeof(*iter));
 if (!iter)
  return -ENOMEM;
 reset_iter(iter, 0);

 iter->show_value = kallsyms_show_value();
 return 0;
}
