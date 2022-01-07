
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;


 int ETH_HLEN ;
 scalar_t__ MAC_PROTO_ETHERNET ;

__attribute__((used)) static inline u16 __ovs_mac_header_len(u8 mac_proto)
{
 return mac_proto == MAC_PROTO_ETHERNET ? ETH_HLEN : 0;
}
