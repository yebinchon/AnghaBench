
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;


 int AF_INET ;
 size_t const INET_ADDRSTRLEN ;
 scalar_t__ in4_pton (char const*,size_t const,int *,char,int *) ;
 int memset (struct sockaddr*,int ,int) ;

__attribute__((used)) static size_t rpc_pton4(const char *buf, const size_t buflen,
   struct sockaddr *sap, const size_t salen)
{
 struct sockaddr_in *sin = (struct sockaddr_in *)sap;
 u8 *addr = (u8 *)&sin->sin_addr.s_addr;

 if (buflen > INET_ADDRSTRLEN || salen < sizeof(struct sockaddr_in))
  return 0;

 memset(sap, 0, sizeof(struct sockaddr_in));

 if (in4_pton(buf, buflen, addr, '\0', ((void*)0)) == 0)
  return 0;

 sin->sin_family = AF_INET;
 return sizeof(struct sockaddr_in);
}
