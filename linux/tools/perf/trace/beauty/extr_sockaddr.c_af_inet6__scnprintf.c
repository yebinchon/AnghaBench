
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int tmp ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; int sin6_addr; int sin6_family; int sin6_port; int sin6_flowinfo; } ;
struct sockaddr {int dummy; } ;


 int inet_ntop (int ,int *,char*,int) ;
 scalar_t__ ntohl (int ) ;
 int ntohs (int ) ;
 size_t scnprintf (char*,size_t,char*,scalar_t__,...) ;

__attribute__((used)) static size_t af_inet6__scnprintf(struct sockaddr *sa, char *bf, size_t size)
{
 struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sa;
 u32 flowinfo = ntohl(sin6->sin6_flowinfo);
 char tmp[512];
 size_t printed = scnprintf(bf, size, ", port: %d, addr: %s", ntohs(sin6->sin6_port),
       inet_ntop(sin6->sin6_family, &sin6->sin6_addr, tmp, sizeof(tmp)));
 if (flowinfo != 0)
  printed += scnprintf(bf + printed, size - printed, ", flowinfo: %lu", flowinfo);
 if (sin6->sin6_scope_id != 0)
  printed += scnprintf(bf + printed, size - printed, ", scope_id: %lu", sin6->sin6_scope_id);

 return printed;
}
