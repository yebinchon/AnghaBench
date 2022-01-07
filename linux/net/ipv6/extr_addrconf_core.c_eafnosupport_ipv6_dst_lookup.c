
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net {int dummy; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;


 int EAFNOSUPPORT ;

__attribute__((used)) static int eafnosupport_ipv6_dst_lookup(struct net *net, struct sock *u1,
     struct dst_entry **u2,
     struct flowi6 *u3)
{
 return -EAFNOSUPPORT;
}
