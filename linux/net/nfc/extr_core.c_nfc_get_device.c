
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dummy; } ;
struct device {int dummy; } ;


 struct device* class_find_device (int *,int *,unsigned int*,int ) ;
 int match_idx ;
 int nfc_class ;
 struct nfc_dev* to_nfc_dev (struct device*) ;

struct nfc_dev *nfc_get_device(unsigned int idx)
{
 struct device *d;

 d = class_find_device(&nfc_class, ((void*)0), &idx, match_idx);
 if (!d)
  return ((void*)0);

 return to_nfc_dev(d);
}
