
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; scalar_t__ extended_addr; scalar_t__ pan_id; scalar_t__ short_addr; } ;
struct dgram_sock {TYPE_1__ src_addr; int bound; } ;
typedef scalar_t__ __le64 ;
typedef scalar_t__ __le16 ;


 scalar_t__ IEEE802154_ADDR_LONG ;
 scalar_t__ IEEE802154_ADDR_SHORT ;

__attribute__((used)) static inline bool
ieee802154_match_sock(__le64 hw_addr, __le16 pan_id, __le16 short_addr,
        struct dgram_sock *ro)
{
 if (!ro->bound)
  return 1;

 if (ro->src_addr.mode == IEEE802154_ADDR_LONG &&
     hw_addr == ro->src_addr.extended_addr)
  return 1;

 if (ro->src_addr.mode == IEEE802154_ADDR_SHORT &&
     pan_id == ro->src_addr.pan_id &&
     short_addr == ro->src_addr.short_addr)
  return 1;

 return 0;
}
