
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int csum; } ;
struct TYPE_4__ {size_t type; } ;
struct TYPE_5__ {TYPE_1__ icmph; } ;
struct icmp_bxm {int skb; TYPE_2__ data; scalar_t__ offset; } ;
typedef int __wsum ;
struct TYPE_6__ {scalar_t__ error; } ;


 int csum_block_add (int ,int ,int) ;
 TYPE_3__* icmp_pointers ;
 int nf_ct_attach (struct sk_buff*,int ) ;
 int skb_copy_and_csum_bits (int ,scalar_t__,char*,int,int ) ;

__attribute__((used)) static int icmp_glue_bits(void *from, char *to, int offset, int len, int odd,
     struct sk_buff *skb)
{
 struct icmp_bxm *icmp_param = (struct icmp_bxm *)from;
 __wsum csum;

 csum = skb_copy_and_csum_bits(icmp_param->skb,
          icmp_param->offset + offset,
          to, len, 0);

 skb->csum = csum_block_add(skb->csum, csum, odd);
 if (icmp_pointers[icmp_param->data.icmph.type].error)
  nf_ct_attach(skb, icmp_param->skb);
 return 0;
}
