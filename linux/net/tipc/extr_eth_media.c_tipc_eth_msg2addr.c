
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_media_addr {int dummy; } ;
struct tipc_bearer {int dummy; } ;


 int TIPC_MEDIA_ADDR_OFFSET ;
 int tipc_eth_raw2addr (struct tipc_bearer*,struct tipc_media_addr*,char*) ;

__attribute__((used)) static int tipc_eth_msg2addr(struct tipc_bearer *b,
        struct tipc_media_addr *addr,
        char *msg)
{

 msg += TIPC_MEDIA_ADDR_OFFSET;
 return tipc_eth_raw2addr(b, addr, msg);
}
