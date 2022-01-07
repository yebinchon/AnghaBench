
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {unsigned int const idx; } ;
struct device {int dummy; } ;


 struct nfc_dev* to_nfc_dev (struct device*) ;

__attribute__((used)) static int match_idx(struct device *d, const void *data)
{
 struct nfc_dev *dev = to_nfc_dev(d);
 const unsigned int *idx = data;

 return dev->idx == *idx;
}
