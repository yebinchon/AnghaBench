
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; } ;
struct accessdata_dn {scalar_t__ acc_userl; scalar_t__ acc_passl; scalar_t__ acc_accl; int acc_acc; int acc_pass; int acc_user; } ;


 int memcpy (int *,unsigned char*,scalar_t__) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void dn_access_copy(struct sk_buff *skb, struct accessdata_dn *acc)
{
 unsigned char *ptr = skb->data;

 acc->acc_userl = *ptr++;
 memcpy(&acc->acc_user, ptr, acc->acc_userl);
 ptr += acc->acc_userl;

 acc->acc_passl = *ptr++;
 memcpy(&acc->acc_pass, ptr, acc->acc_passl);
 ptr += acc->acc_passl;

 acc->acc_accl = *ptr++;
 memcpy(&acc->acc_acc, ptr, acc->acc_accl);

 skb_pull(skb, acc->acc_accl + acc->acc_passl + acc->acc_userl + 3);

}
