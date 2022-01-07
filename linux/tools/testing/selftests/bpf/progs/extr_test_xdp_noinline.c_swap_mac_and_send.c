
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_hdr {unsigned char* eth_source; unsigned char* eth_dest; } ;


 int XDP_TX ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static __attribute__ ((noinline))
int swap_mac_and_send(void *data, void *data_end)
{
 unsigned char tmp_mac[6];
 struct eth_hdr *eth;

 eth = data;
 memcpy(tmp_mac, eth->eth_source, 6);
 memcpy(eth->eth_source, eth->eth_dest, 6);
 memcpy(eth->eth_dest, tmp_mac, 6);
 return XDP_TX;
}
