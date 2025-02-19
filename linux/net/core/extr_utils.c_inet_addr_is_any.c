
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 TYPE_2__ IN6ADDR_ANY_INIT ;
 int INADDR_ANY ;
 scalar_t__ htonl (int ) ;
 int memcmp (int ,int ,int) ;
 int pr_warn (char*,scalar_t__) ;

bool inet_addr_is_any(struct sockaddr *addr)
{
 if (addr->sa_family == AF_INET6) {
  struct sockaddr_in6 *in6 = (struct sockaddr_in6 *)addr;
  const struct sockaddr_in6 in6_any =
   { .sin6_addr = IN6ADDR_ANY_INIT };

  if (!memcmp(in6->sin6_addr.s6_addr,
       in6_any.sin6_addr.s6_addr, 16))
   return 1;
 } else if (addr->sa_family == AF_INET) {
  struct sockaddr_in *in = (struct sockaddr_in *)addr;

  if (in->sin_addr.s_addr == htonl(INADDR_ANY))
   return 1;
 } else {
  pr_warn("unexpected address family %u\n", addr->sa_family);
 }

 return 0;
}
