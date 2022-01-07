
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;

int
simple_nosetlease(struct file *filp, long arg, struct file_lock **flp,
    void **priv)
{
 return -EINVAL;
}
