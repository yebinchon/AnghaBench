
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_dev_iter {int dummy; } ;


 int class_dev_iter_init (struct class_dev_iter*,int *,int *,int *) ;
 int nfc_class ;

__attribute__((used)) static inline void nfc_device_iter_init(struct class_dev_iter *iter)
{
 class_dev_iter_init(iter, &nfc_class, ((void*)0), ((void*)0));
}
