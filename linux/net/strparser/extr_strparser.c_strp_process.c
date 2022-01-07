
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct strparser {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {struct strparser* data; } ;
struct TYPE_5__ {TYPE_1__ arg; } ;
typedef TYPE_2__ read_descriptor_t ;


 int __strp_recv (TYPE_2__*,struct sk_buff*,unsigned int,size_t,size_t,long) ;

int strp_process(struct strparser *strp, struct sk_buff *orig_skb,
   unsigned int orig_offset, size_t orig_len,
   size_t max_msg_size, long timeo)
{
 read_descriptor_t desc;

 desc.arg.data = strp;

 return __strp_recv(&desc, orig_skb, orig_offset, orig_len,
      max_msg_size, timeo);
}
