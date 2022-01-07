
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t IEEE802154_SCF_KEY_ID_MODE (int ) ;
 int* ieee802154_sechdr_lengths ;

__attribute__((used)) static int ieee802154_hdr_sechdr_len(u8 sc)
{
 return ieee802154_sechdr_lengths[IEEE802154_SCF_KEY_ID_MODE(sc)];
}
