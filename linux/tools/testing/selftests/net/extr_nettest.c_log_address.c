
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int addrstr ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int fflush (int ) ;
 int inet_ntop (scalar_t__,int *,char*,int) ;
 int log_msg (char*,char const*,int ,int ) ;
 int ntohs (int ) ;
 int printf (char*) ;
 scalar_t__ quiet ;
 int stdout ;

__attribute__((used)) static void log_address(const char *desc, struct sockaddr *sa)
{
 char addrstr[64];

 if (quiet)
  return;

 if (sa->sa_family == AF_INET) {
  struct sockaddr_in *s = (struct sockaddr_in *) sa;

  log_msg("%s %s:%d",
   desc,
   inet_ntop(AF_INET, &s->sin_addr, addrstr,
      sizeof(addrstr)),
   ntohs(s->sin_port));

 } else if (sa->sa_family == AF_INET6) {
  struct sockaddr_in6 *s6 = (struct sockaddr_in6 *) sa;

  log_msg("%s [%s]:%d",
   desc,
   inet_ntop(AF_INET6, &s6->sin6_addr, addrstr,
      sizeof(addrstr)),
   ntohs(s6->sin6_port));
 }

 printf("\n");

 fflush(stdout);
}
