
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct hci_rp_read_local_amp_assoc {size_t status; int frag; int phy_handle; int rem_len; } ;
struct amp_assoc {scalar_t__ offset; scalar_t__ len; scalar_t__ data; } ;
struct hci_dev {size_t name; struct amp_assoc loc_assoc; } ;


 int BT_DBG (char*,size_t,size_t) ;
 size_t __le16_to_cpu (int ) ;
 int a2mp_send_create_phy_link_req (struct hci_dev*,size_t) ;
 int a2mp_send_getampassoc_rsp (struct hci_dev*,size_t) ;
 int amp_read_loc_assoc_frag (struct hci_dev*,int ) ;
 int memcpy (scalar_t__,int ,size_t) ;

__attribute__((used)) static void read_local_amp_assoc_complete(struct hci_dev *hdev, u8 status,
       u16 opcode, struct sk_buff *skb)
{
 struct hci_rp_read_local_amp_assoc *rp = (void *)skb->data;
 struct amp_assoc *assoc = &hdev->loc_assoc;
 size_t rem_len, frag_len;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  goto send_rsp;

 frag_len = skb->len - sizeof(*rp);
 rem_len = __le16_to_cpu(rp->rem_len);

 if (rem_len > frag_len) {
  BT_DBG("frag_len %zu rem_len %zu", frag_len, rem_len);

  memcpy(assoc->data + assoc->offset, rp->frag, frag_len);
  assoc->offset += frag_len;


  amp_read_loc_assoc_frag(hdev, rp->phy_handle);

  return;
 }

 memcpy(assoc->data + assoc->offset, rp->frag, rem_len);
 assoc->len = assoc->offset + rem_len;
 assoc->offset = 0;

send_rsp:

 a2mp_send_getampassoc_rsp(hdev, rp->status);
 a2mp_send_create_phy_link_req(hdev, rp->status);
}
