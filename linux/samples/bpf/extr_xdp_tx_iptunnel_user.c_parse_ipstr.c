
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int fprintf (int ,char*,char const*) ;
 int inet_pton (int,char const*,unsigned int*) ;
 int stderr ;

__attribute__((used)) static int parse_ipstr(const char *ipstr, unsigned int *addr)
{
 if (inet_pton(AF_INET6, ipstr, addr) == 1) {
  return AF_INET6;
 } else if (inet_pton(AF_INET, ipstr, addr) == 1) {
  addr[1] = addr[2] = addr[3] = 0;
  return AF_INET;
 }

 fprintf(stderr, "%s is an invalid IP\n", ipstr);
 return AF_UNSPEC;
}
