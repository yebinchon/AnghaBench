
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct hci_acl_hdr {void* dlen; void* handle; } ;
typedef int __u16 ;


 int HCI_ACL_HDR_SIZE ;
 void* cpu_to_le16 (int) ;
 int hci_handle_pack (int ,int ) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static void hci_add_acl_hdr(struct sk_buff *skb, __u16 handle, __u16 flags)
{
 struct hci_acl_hdr *hdr;
 int len = skb->len;

 skb_push(skb, HCI_ACL_HDR_SIZE);
 skb_reset_transport_header(skb);
 hdr = (struct hci_acl_hdr *)skb_transport_header(skb);
 hdr->handle = cpu_to_le16(hci_handle_pack(handle, flags));
 hdr->dlen = cpu_to_le16(len);
}
