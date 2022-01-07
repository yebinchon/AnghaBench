
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int NFC_HCI_TYPE_A_SEL_PROT (int ) ;




 int NFC_PROTO_ISO14443_MASK ;
 int NFC_PROTO_MIFARE_MASK ;
 int NFC_PROTO_NFC_DEP_MASK ;

u32 nfc_hci_sak_to_protocol(u8 sak)
{
 switch (NFC_HCI_TYPE_A_SEL_PROT(sak)) {
 case 128:
  return NFC_PROTO_MIFARE_MASK;
 case 130:
  return NFC_PROTO_ISO14443_MASK;
 case 131:
  return NFC_PROTO_NFC_DEP_MASK;
 case 129:
  return NFC_PROTO_ISO14443_MASK | NFC_PROTO_NFC_DEP_MASK;
 default:
  return 0xffffffff;
 }
}
