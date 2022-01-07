
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_media_addr {int dummy; } ;
struct tipc_bearer {int dummy; } ;


 int tipc_ib_raw2addr (struct tipc_bearer*,struct tipc_media_addr*,char*) ;

__attribute__((used)) static int tipc_ib_msg2addr(struct tipc_bearer *b,
       struct tipc_media_addr *addr,
       char *msg)
{
 return tipc_ib_raw2addr(b, addr, msg);
}
