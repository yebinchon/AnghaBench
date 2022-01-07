
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_family; void* sin6_port; int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_family; void* sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;




 int INADDR_ANY ;
 int error (int,int ,char*,int) ;
 int htonl (int ) ;
 void* htons (int ) ;
 int in6addr_any ;
 struct sockaddr_storage* malloc (int) ;
 int memset (struct sockaddr_storage*,int ,int) ;

__attribute__((used)) static struct sockaddr *new_any_sockaddr(int family, uint16_t port)
{
 struct sockaddr_storage *addr;
 struct sockaddr_in *addr4;
 struct sockaddr_in6 *addr6;

 addr = malloc(sizeof(struct sockaddr_storage));
 memset(addr, 0, sizeof(struct sockaddr_storage));

 switch (family) {
 case 129:
  addr4 = (struct sockaddr_in *)addr;
  addr4->sin_family = 129;
  addr4->sin_addr.s_addr = htonl(INADDR_ANY);
  addr4->sin_port = htons(port);
  break;
 case 128:
  addr6 = (struct sockaddr_in6 *)addr;
  addr6->sin6_family = 128;
  addr6->sin6_addr = in6addr_any;
  addr6->sin6_port = htons(port);
  break;
 default:
  error(1, 0, "Unsupported family %d", family);
 }
 return (struct sockaddr *)addr;
}
