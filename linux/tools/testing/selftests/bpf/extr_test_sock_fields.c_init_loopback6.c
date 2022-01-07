
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; int sin6_family; } ;


 int AF_INET6 ;
 int in6addr_loopback ;
 int memset (struct sockaddr_in6*,int ,int) ;

__attribute__((used)) static void init_loopback6(struct sockaddr_in6 *sa6)
{
 memset(sa6, 0, sizeof(*sa6));
 sa6->sin6_family = AF_INET6;
 sa6->sin6_addr = in6addr_loopback;
}
