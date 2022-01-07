
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;




 int INADDR_LOOPBACK ;
 int error (int,int ,char*,int) ;
 int htonl (int ) ;
 int in6addr_loopback ;
 struct sockaddr* new_any_sockaddr (int,int ) ;

__attribute__((used)) static struct sockaddr *new_loopback_sockaddr(int family, uint16_t port)
{
 struct sockaddr *addr = new_any_sockaddr(family, port);
 struct sockaddr_in *addr4;
 struct sockaddr_in6 *addr6;

 switch (family) {
 case 129:
  addr4 = (struct sockaddr_in *)addr;
  addr4->sin_addr.s_addr = htonl(INADDR_LOOPBACK);
  break;
 case 128:
  addr6 = (struct sockaddr_in6 *)addr;
  addr6->sin6_addr = in6addr_loopback;
  break;
 default:
  error(1, 0, "Unsupported family %d", family);
 }
 return addr;
}
