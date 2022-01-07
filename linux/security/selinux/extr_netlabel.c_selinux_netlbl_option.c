
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_HOPOPTS ;
 int IP_OPTIONS ;

__attribute__((used)) static inline int selinux_netlbl_option(int level, int optname)
{
 return (level == IPPROTO_IP && optname == IP_OPTIONS) ||
  (level == IPPROTO_IPV6 && optname == IPV6_HOPOPTS);
}
