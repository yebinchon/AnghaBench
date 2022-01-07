
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; } ;


 int AF_INET ;
 int parse_addr (int ,int *,char const*) ;

__attribute__((used)) static void parse_addr4(struct sockaddr_in *addr, const char *optarg)
{
 parse_addr(AF_INET, &addr->sin_addr, optarg);
}
