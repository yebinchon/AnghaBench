
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_dev_iter {int dummy; } ;


 int class_dev_iter_exit (struct class_dev_iter*) ;

__attribute__((used)) static inline void nfc_device_iter_exit(struct class_dev_iter *iter)
{
 class_dev_iter_exit(iter);
}
