
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int tomoyo_query_list ;
 int tomoyo_query_wait ;

__attribute__((used)) static __poll_t tomoyo_poll_query(struct file *file, poll_table *wait)
{
 if (!list_empty(&tomoyo_query_list))
  return EPOLLIN | EPOLLRDNORM;
 poll_wait(file, &tomoyo_query_wait, wait);
 if (!list_empty(&tomoyo_query_list))
  return EPOLLIN | EPOLLRDNORM;
 return 0;
}
