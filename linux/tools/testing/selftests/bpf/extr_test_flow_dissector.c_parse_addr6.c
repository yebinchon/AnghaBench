
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;


 int AF_INET6 ;
 int parse_addr (int ,int *,char const*) ;

__attribute__((used)) static void parse_addr6(struct sockaddr_in6 *addr, const char *optarg)
{
 parse_addr(AF_INET6, &addr->sin6_addr, optarg);
}
