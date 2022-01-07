
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_header {int ether_dhost; int ether_shost; } ;
struct ether_addr {int dummy; } ;



__attribute__((used)) static void swap_mac_addresses(void *data)
{
 struct ether_header *eth = (struct ether_header *)data;
 struct ether_addr *src_addr = (struct ether_addr *)&eth->ether_shost;
 struct ether_addr *dst_addr = (struct ether_addr *)&eth->ether_dhost;
 struct ether_addr tmp;

 tmp = *src_addr;
 *src_addr = *dst_addr;
 *dst_addr = tmp;
}
