
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_op; } ;


 int eventpoll_fops ;

__attribute__((used)) static inline int is_file_epoll(struct file *f)
{
 return f->f_op == &eventpoll_fops;
}
