
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_ifaddr {int dummy; } ;


 int GFP_KERNEL ;
 struct dn_ifaddr* kzalloc (int,int ) ;

__attribute__((used)) static struct dn_ifaddr *dn_dev_alloc_ifa(void)
{
 struct dn_ifaddr *ifa;

 ifa = kzalloc(sizeof(*ifa), GFP_KERNEL);

 return ifa;
}
