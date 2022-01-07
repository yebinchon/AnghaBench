
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dummy; } ;
struct device {int dummy; } ;
struct class_dev_iter {int dummy; } ;


 struct device* class_dev_iter_next (struct class_dev_iter*) ;
 struct nfc_dev* to_nfc_dev (struct device*) ;

__attribute__((used)) static inline struct nfc_dev *nfc_device_iter_next(struct class_dev_iter *iter)
{
 struct device *d = class_dev_iter_next(iter);
 if (!d)
  return ((void*)0);

 return to_nfc_dev(d);
}
