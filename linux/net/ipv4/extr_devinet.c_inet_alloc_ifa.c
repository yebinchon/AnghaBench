
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ifaddr {int dummy; } ;


 int GFP_KERNEL ;
 struct in_ifaddr* kzalloc (int,int ) ;

__attribute__((used)) static struct in_ifaddr *inet_alloc_ifa(void)
{
 return kzalloc(sizeof(struct in_ifaddr), GFP_KERNEL);
}
