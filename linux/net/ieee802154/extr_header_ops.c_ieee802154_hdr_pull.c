
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int * data; } ;
struct TYPE_2__ {scalar_t__ security_enabled; } ;
struct ieee802154_hdr {int sec; TYPE_1__ fc; } ;


 int EINVAL ;
 scalar_t__ ieee802154_hdr_get_addrs (int *,struct ieee802154_hdr*) ;
 scalar_t__ ieee802154_hdr_get_sechdr (int *,int *) ;
 int ieee802154_hdr_minlen (struct ieee802154_hdr*) ;
 int ieee802154_hdr_sechdr_len (int ) ;
 int memcpy (struct ieee802154_hdr*,int *,int) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,int) ;

int
ieee802154_hdr_pull(struct sk_buff *skb, struct ieee802154_hdr *hdr)
{
 int pos = 3, rc;

 if (!pskb_may_pull(skb, 3))
  return -EINVAL;

 memcpy(hdr, skb->data, 3);

 rc = ieee802154_hdr_minlen(hdr);
 if (rc < 0 || !pskb_may_pull(skb, rc))
  return -EINVAL;

 pos += ieee802154_hdr_get_addrs(skb->data + pos, hdr);

 if (hdr->fc.security_enabled) {
  int want = pos + ieee802154_hdr_sechdr_len(skb->data[pos]);

  if (!pskb_may_pull(skb, want))
   return -EINVAL;

  pos += ieee802154_hdr_get_sechdr(skb->data + pos, &hdr->sec);
 }

 skb_pull(skb, pos);
 return pos;
}
