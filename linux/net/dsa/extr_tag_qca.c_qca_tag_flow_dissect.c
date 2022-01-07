
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
typedef int __be16 ;


 int QCA_HDR_LEN ;

__attribute__((used)) static int qca_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
                                int *offset)
{
 *offset = QCA_HDR_LEN;
 *proto = ((__be16 *)skb->data)[0];

 return 0;
}
