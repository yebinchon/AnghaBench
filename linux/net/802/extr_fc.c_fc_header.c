
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {void const* dev_addr; int addr_len; } ;
struct fcllc {int* protid; int ethertype; int llc; int ssap; int dsap; } ;
struct fch_hdr {int daddr; int saddr; } ;


 unsigned short ETH_P_ARP ;
 unsigned short ETH_P_IP ;
 int EXTENDED_SAP ;
 int UI_CMD ;
 int htons (unsigned short) ;
 int memcpy (int ,void const*,int ) ;
 struct fch_hdr* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int fc_header(struct sk_buff *skb, struct net_device *dev,
       unsigned short type,
       const void *daddr, const void *saddr, unsigned int len)
{
 struct fch_hdr *fch;
 int hdr_len;





 if (type == ETH_P_IP || type == ETH_P_ARP)
 {
  struct fcllc *fcllc;

  hdr_len = sizeof(struct fch_hdr) + sizeof(struct fcllc);
  fch = skb_push(skb, hdr_len);
  fcllc = (struct fcllc *)(fch+1);
  fcllc->dsap = fcllc->ssap = EXTENDED_SAP;
  fcllc->llc = UI_CMD;
  fcllc->protid[0] = fcllc->protid[1] = fcllc->protid[2] = 0x00;
  fcllc->ethertype = htons(type);
 }
 else
 {
  hdr_len = sizeof(struct fch_hdr);
  fch = skb_push(skb, hdr_len);
 }

 if(saddr)
  memcpy(fch->saddr,saddr,dev->addr_len);
 else
  memcpy(fch->saddr,dev->dev_addr,dev->addr_len);

 if(daddr)
 {
  memcpy(fch->daddr,daddr,dev->addr_len);
  return hdr_len;
 }
 return -hdr_len;
}
