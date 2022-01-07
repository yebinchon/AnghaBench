
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct nlmsghdr {int dummy; } ;
struct ifaddrmsg {int ifa_index; void* ifa_scope; int ifa_flags; void* ifa_prefixlen; int ifa_family; } ;


 int AF_INET6 ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr*) ;

__attribute__((used)) static void put_ifaddrmsg(struct nlmsghdr *nlh, u8 prefixlen, u32 flags,
     u8 scope, int ifindex)
{
 struct ifaddrmsg *ifm;

 ifm = nlmsg_data(nlh);
 ifm->ifa_family = AF_INET6;
 ifm->ifa_prefixlen = prefixlen;
 ifm->ifa_flags = flags;
 ifm->ifa_scope = scope;
 ifm->ifa_index = ifindex;
}
