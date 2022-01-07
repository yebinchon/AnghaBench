
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
struct ethhdr {void* h_proto; } ;


 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 scalar_t__ cfg_use_vlan ;
 void* htons (int ) ;

__attribute__((used)) static int build_eth_header(void *header)
{
 struct ethhdr *eth = header;

 if (cfg_use_vlan) {
  uint16_t *tag = header + ETH_HLEN;

  eth->h_proto = htons(ETH_P_8021Q);
  tag[1] = htons(ETH_P_IP);
  return ETH_HLEN + 4;
 }

 eth->h_proto = htons(ETH_P_IP);
 return ETH_HLEN;
}
