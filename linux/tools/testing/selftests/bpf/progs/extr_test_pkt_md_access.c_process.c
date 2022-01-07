
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int TC_ACT_OK ;
 int TEST_FIELD (int ,int ,int) ;
 int __u16 ;
 int __u32 ;
 int __u8 ;
 int hash ;
 int len ;
 int protocol ;

int process(struct __sk_buff *skb)
{
 TEST_FIELD(__u8, len, 0xFF);
 TEST_FIELD(__u16, len, 0xFFFF);
 TEST_FIELD(__u32, len, 0xFFFFFFFF);
 TEST_FIELD(__u16, protocol, 0xFFFF);
 TEST_FIELD(__u32, protocol, 0xFFFFFFFF);
 TEST_FIELD(__u8, hash, 0xFF);
 TEST_FIELD(__u16, hash, 0xFFFF);
 TEST_FIELD(__u32, hash, 0xFFFFFFFF);

 return TC_ACT_OK;
}
