
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_media_addr {int value; } ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static int tipc_eth_addr2str(struct tipc_media_addr *addr,
        char *strbuf, int bufsz)
{
 if (bufsz < 18)
  return 1;

 sprintf(strbuf, "%pM", addr->value);
 return 0;
}
