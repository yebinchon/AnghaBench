
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; int sin6_port; int sin6_family; } ;


 int AF_INET6 ;
 int htons (int) ;
 int if_nametoindex (char const*) ;
 int inet_pton (int ,char const*,int *) ;
 int log_err (char*,char const*) ;
 int memset (struct sockaddr_in6*,int ,int) ;

__attribute__((used)) static int mk_dst_addr(const char *ip, const char *iface,
         struct sockaddr_in6 *dst)
{
 memset(dst, 0, sizeof(*dst));

 dst->sin6_family = AF_INET6;
 dst->sin6_port = htons(1025);

 if (inet_pton(AF_INET6, ip, &dst->sin6_addr) != 1) {
  log_err("Invalid IPv6: %s", ip);
  return -1;
 }

 dst->sin6_scope_id = if_nametoindex(iface);
 if (!dst->sin6_scope_id) {
  log_err("Failed to get index of iface: %s", iface);
  return -1;
 }

 return 0;
}
