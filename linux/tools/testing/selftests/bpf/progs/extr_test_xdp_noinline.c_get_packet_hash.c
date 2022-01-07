
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ports; int src; int srcv6; } ;
struct packet_description {TYPE_1__ flow; } ;
typedef int __u32 ;


 int jhash (int ,int,int) ;
 int jhash_2words (int ,int ,int) ;

__attribute__((used)) static __attribute__ ((noinline))
__u32 get_packet_hash(struct packet_description *pckt,
        bool hash_16bytes)
{
 if (hash_16bytes)
  return jhash_2words(jhash(pckt->flow.srcv6, 16, 12),
        pckt->flow.ports, 24);
 else
  return jhash_2words(pckt->flow.src, pckt->flow.ports,
        24);
}
