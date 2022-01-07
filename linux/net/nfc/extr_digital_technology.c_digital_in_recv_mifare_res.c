
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__* data; } ;


 int DIGITAL_CRC_LEN ;
 scalar_t__ DIGITAL_MIFARE_ACK_RES ;
 int DIGITAL_MIFARE_READ_RES_LEN ;
 int EIO ;
 int PROTOCOL_ERR (char*) ;
 scalar_t__ digital_skb_check_crc_a (struct sk_buff*) ;

int digital_in_recv_mifare_res(struct sk_buff *resp)
{





 if (resp->len == DIGITAL_MIFARE_READ_RES_LEN + DIGITAL_CRC_LEN) {
  if (digital_skb_check_crc_a(resp)) {
   PROTOCOL_ERR("9.4.1.2");
   return -EIO;
  }

  return 0;
 }


 if (resp->len == 1 && resp->data[0] == DIGITAL_MIFARE_ACK_RES) {
  resp->data[0] = 0;
  return 0;
 }


 return -EIO;
}
