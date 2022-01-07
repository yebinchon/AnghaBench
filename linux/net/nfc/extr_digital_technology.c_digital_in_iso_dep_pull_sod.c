
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int len; scalar_t__* data; } ;
struct nfc_digital_dev {int dummy; } ;


 scalar_t__ DIGITAL_ISO_DEP_BLOCK_HAS_DID (scalar_t__) ;
 scalar_t__ DIGITAL_ISO_DEP_I_BLOCK ;
 scalar_t__ DIGITAL_ISO_DEP_PCB_TYPE (scalar_t__) ;
 int EIO ;
 int pr_err (char*) ;
 int skb_pull (struct sk_buff*,int) ;

int digital_in_iso_dep_pull_sod(struct nfc_digital_dev *ddev,
    struct sk_buff *skb)
{
 u8 pcb;
 u8 block_type;

 if (skb->len < 1)
  return -EIO;

 pcb = *skb->data;
 block_type = DIGITAL_ISO_DEP_PCB_TYPE(pcb);


 if (block_type != DIGITAL_ISO_DEP_I_BLOCK) {
  pr_err("ISO_DEP R-block and S-block not supported\n");
  return -EIO;
 }

 if (DIGITAL_ISO_DEP_BLOCK_HAS_DID(pcb)) {
  pr_err("DID field in ISO_DEP PCB not supported\n");
  return -EIO;
 }

 skb_pull(skb, 1);

 return 0;
}
