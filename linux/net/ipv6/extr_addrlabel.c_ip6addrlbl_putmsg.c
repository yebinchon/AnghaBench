
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlmsghdr {int dummy; } ;
struct ifaddrlblmsg {int ifal_prefixlen; int ifal_index; int ifal_seq; scalar_t__ ifal_flags; int ifal_family; } ;


 int AF_INET6 ;
 struct ifaddrlblmsg* nlmsg_data (struct nlmsghdr*) ;

__attribute__((used)) static void ip6addrlbl_putmsg(struct nlmsghdr *nlh,
         int prefixlen, int ifindex, u32 lseq)
{
 struct ifaddrlblmsg *ifal = nlmsg_data(nlh);
 ifal->ifal_family = AF_INET6;
 ifal->ifal_prefixlen = prefixlen;
 ifal->ifal_flags = 0;
 ifal->ifal_index = ifindex;
 ifal->ifal_seq = lseq;
}
