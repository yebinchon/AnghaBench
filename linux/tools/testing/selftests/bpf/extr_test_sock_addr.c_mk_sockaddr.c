
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_family; int sin6_addr; void* sin6_port; } ;
struct sockaddr_in {int sin_family; int sin_addr; void* sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int AF_INET ;
 int AF_INET6 ;
 void* htons (unsigned short) ;
 int inet_pton (int,char const*,void*) ;
 int log_err (char*,...) ;
 int memset (struct sockaddr*,int ,int) ;

__attribute__((used)) static int mk_sockaddr(int domain, const char *ip, unsigned short port,
         struct sockaddr *addr, socklen_t addr_len)
{
 struct sockaddr_in6 *addr6;
 struct sockaddr_in *addr4;

 if (domain != AF_INET && domain != AF_INET6) {
  log_err("Unsupported address family");
  return -1;
 }

 memset(addr, 0, addr_len);

 if (domain == AF_INET) {
  if (addr_len < sizeof(struct sockaddr_in))
   return -1;
  addr4 = (struct sockaddr_in *)addr;
  addr4->sin_family = domain;
  addr4->sin_port = htons(port);
  if (inet_pton(domain, ip, (void *)&addr4->sin_addr) != 1) {
   log_err("Invalid IPv4: %s", ip);
   return -1;
  }
 } else if (domain == AF_INET6) {
  if (addr_len < sizeof(struct sockaddr_in6))
   return -1;
  addr6 = (struct sockaddr_in6 *)addr;
  addr6->sin6_family = domain;
  addr6->sin6_port = htons(port);
  if (inet_pton(domain, ip, (void *)&addr6->sin6_addr) != 1) {
   log_err("Invalid IPv6: %s", ip);
   return -1;
  }
 }

 return 0;
}
