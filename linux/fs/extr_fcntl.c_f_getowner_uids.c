
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int f_getowner_uids(struct file *filp, unsigned long arg)
{
 return -EINVAL;
}
