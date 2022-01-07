
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_hci_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NFC_HCI_ANY_SET_PARAMETER ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int const*,size_t) ;
 int nfc_hci_send_cmd (struct nfc_hci_dev*,int ,int ,int *,size_t,int *) ;
 int pr_debug (char*,int ,int ) ;

int nfc_hci_set_param(struct nfc_hci_dev *hdev, u8 gate, u8 idx,
        const u8 *param, size_t param_len)
{
 int r;
 u8 *tmp;
 pr_debug("idx=%d to gate %d\n", idx, gate);

 tmp = kmalloc(1 + param_len, GFP_KERNEL);
 if (tmp == ((void*)0))
  return -ENOMEM;

 *tmp = idx;
 memcpy(tmp + 1, param, param_len);

 r = nfc_hci_send_cmd(hdev, gate, NFC_HCI_ANY_SET_PARAMETER,
        tmp, param_len + 1, ((void*)0));

 kfree(tmp);

 return r;
}
