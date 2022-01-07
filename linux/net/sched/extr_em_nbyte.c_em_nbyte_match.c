
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_pkt_info {int dummy; } ;
struct tcf_ematch {scalar_t__ data; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int len; int off; int layer; } ;
struct nbyte_data {TYPE_1__ hdr; int pattern; } ;


 int memcmp (unsigned char*,int ,int ) ;
 unsigned char* tcf_get_base_ptr (struct sk_buff*,int ) ;
 int tcf_valid_offset (struct sk_buff*,unsigned char*,int ) ;

__attribute__((used)) static int em_nbyte_match(struct sk_buff *skb, struct tcf_ematch *em,
     struct tcf_pkt_info *info)
{
 struct nbyte_data *nbyte = (struct nbyte_data *) em->data;
 unsigned char *ptr = tcf_get_base_ptr(skb, nbyte->hdr.layer);

 ptr += nbyte->hdr.off;

 if (!tcf_valid_offset(skb, ptr, nbyte->hdr.len))
  return 0;

 return !memcmp(ptr, nbyte->pattern, nbyte->hdr.len);
}
