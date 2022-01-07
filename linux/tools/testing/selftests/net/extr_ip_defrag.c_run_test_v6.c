
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; int sin6_port; int sin6_family; int member_0; } ;
typedef int addr ;


 int AF_INET6 ;
 int addr6 ;
 int cfg_port ;
 int htons (int ) ;
 int run_test (void*,int,int) ;

__attribute__((used)) static void run_test_v6(void)
{
 struct sockaddr_in6 addr = {0};

 addr.sin6_family = AF_INET6;
 addr.sin6_port = htons(cfg_port);
 addr.sin6_addr = addr6;

 run_test((void *)&addr, sizeof(addr), 1 );
}
