
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mac802154_llsec_key {int dummy; } ;
struct mac802154_llsec {int dummy; } ;
struct TYPE_2__ {scalar_t__ level; } ;
struct ieee802154_hdr {TYPE_1__ sec; } ;
typedef int __le64 ;


 scalar_t__ IEEE802154_SCF_SECLEVEL_ENC ;
 int llsec_do_decrypt_auth (struct sk_buff*,struct mac802154_llsec const*,struct ieee802154_hdr const*,struct mac802154_llsec_key*,int ) ;
 int llsec_do_decrypt_unauth (struct sk_buff*,struct mac802154_llsec const*,struct ieee802154_hdr const*,struct mac802154_llsec_key*,int ) ;

__attribute__((used)) static int
llsec_do_decrypt(struct sk_buff *skb, const struct mac802154_llsec *sec,
   const struct ieee802154_hdr *hdr,
   struct mac802154_llsec_key *key, __le64 dev_addr)
{
 if (hdr->sec.level == IEEE802154_SCF_SECLEVEL_ENC)
  return llsec_do_decrypt_unauth(skb, sec, hdr, key, dev_addr);
 else
  return llsec_do_decrypt_auth(skb, sec, hdr, key, dev_addr);
}
