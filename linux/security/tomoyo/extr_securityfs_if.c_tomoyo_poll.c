
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int tomoyo_poll_control (struct file*,int *) ;

__attribute__((used)) static __poll_t tomoyo_poll(struct file *file, poll_table *wait)
{
 return tomoyo_poll_control(file, wait);
}
