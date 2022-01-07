
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int ICMPV6_ECHO_REQUEST ;
 int ICMP_ECHO ;

__attribute__((used)) static inline int ping_supported(int family, int type, int code)
{
 return (family == AF_INET && type == ICMP_ECHO && code == 0) ||
        (family == AF_INET6 && type == ICMPV6_ECHO_REQUEST && code == 0);
}
