
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_llsec_key_id {int mode; scalar_t__ id; int extended_source; int short_source; int device_addr; } ;



 int IEEE802154_SCF_KEY_IMPLICIT ;


 int ieee802154_addr_equal (int *,int *) ;

__attribute__((used)) static bool llsec_key_id_equal(const struct ieee802154_llsec_key_id *a,
          const struct ieee802154_llsec_key_id *b)
{
 if (a->mode != b->mode)
  return 0;

 if (a->mode == IEEE802154_SCF_KEY_IMPLICIT)
  return ieee802154_addr_equal(&a->device_addr, &b->device_addr);

 if (a->id != b->id)
  return 0;

 switch (a->mode) {
 case 129:
  return 1;
 case 128:
  return a->short_source == b->short_source;
 case 130:
  return a->extended_source == b->extended_source;
 }

 return 0;
}
