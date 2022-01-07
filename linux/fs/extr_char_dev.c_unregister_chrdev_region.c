
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int dev_t ;


 scalar_t__ MAJOR (unsigned int) ;
 int MINOR (unsigned int) ;
 unsigned int MKDEV (scalar_t__,int ) ;
 int __unregister_chrdev_region (scalar_t__,int ,unsigned int) ;
 int kfree (int ) ;

void unregister_chrdev_region(dev_t from, unsigned count)
{
 dev_t to = from + count;
 dev_t n, next;

 for (n = from; n < to; n = next) {
  next = MKDEV(MAJOR(n)+1, 0);
  if (next > to)
   next = to;
  kfree(__unregister_chrdev_region(MAJOR(n), MINOR(n), next - n));
 }
}
