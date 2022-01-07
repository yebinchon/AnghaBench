
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_media_addr {int dummy; } ;
struct tipc_media_addr {int broadcast; int value; int media_id; } ;


 int TIPC_BROADCAST_SUPPORT ;
 int TIPC_MEDIA_TYPE_UDP ;
 int memcpy (int ,struct udp_media_addr*,int) ;
 int memset (struct tipc_media_addr*,int ,int) ;
 scalar_t__ tipc_udp_is_mcast_addr (struct udp_media_addr*) ;

__attribute__((used)) static void tipc_udp_media_addr_set(struct tipc_media_addr *addr,
        struct udp_media_addr *ua)
{
 memset(addr, 0, sizeof(struct tipc_media_addr));
 addr->media_id = TIPC_MEDIA_TYPE_UDP;
 memcpy(addr->value, ua, sizeof(struct udp_media_addr));

 if (tipc_udp_is_mcast_addr(ua))
  addr->broadcast = TIPC_BROADCAST_SUPPORT;
}
