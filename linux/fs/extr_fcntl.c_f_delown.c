
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int PIDTYPE_TGID ;
 int f_modown (struct file*,int *,int ,int) ;

void f_delown(struct file *filp)
{
 f_modown(filp, ((void*)0), PIDTYPE_TGID, 1);
}
