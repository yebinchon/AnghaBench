
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; } ;



__attribute__((used)) static u8 nfc_llcp_nr(struct sk_buff *pdu)
{
 return pdu->data[2] & 0xf;
}
