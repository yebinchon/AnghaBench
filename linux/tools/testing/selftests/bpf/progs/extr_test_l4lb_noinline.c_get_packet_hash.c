
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_description {int ports; int src; int srcv6; } ;
typedef int __u32 ;


 int CH_RINGS_SIZE ;
 int MAX_VIPS ;
 int jhash (int ,int,int ) ;
 int jhash_2words (int ,int ,int ) ;

__attribute__((used)) static __u32 get_packet_hash(struct packet_description *pckt,
        bool ipv6)
{
 if (ipv6)
  return jhash_2words(jhash(pckt->srcv6, 16, MAX_VIPS),
        pckt->ports, CH_RINGS_SIZE);
 else
  return jhash_2words(pckt->src, pckt->ports, CH_RINGS_SIZE);
}
