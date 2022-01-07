
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_media_addr {int value; } ;


 int ETH_ALEN ;
 int TIPC_MEDIA_ADDR_OFFSET ;
 int TIPC_MEDIA_INFO_SIZE ;
 char TIPC_MEDIA_TYPE_ETH ;
 size_t TIPC_MEDIA_TYPE_OFFSET ;
 int memcpy (char*,int ,int ) ;
 int memset (char*,int ,int ) ;

__attribute__((used)) static int tipc_eth_addr2msg(char *msg, struct tipc_media_addr *addr)
{
 memset(msg, 0, TIPC_MEDIA_INFO_SIZE);
 msg[TIPC_MEDIA_TYPE_OFFSET] = TIPC_MEDIA_TYPE_ETH;
 memcpy(msg + TIPC_MEDIA_ADDR_OFFSET, addr->value, ETH_ALEN);
 return 0;
}
