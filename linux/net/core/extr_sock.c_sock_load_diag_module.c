
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int ENOENT ;
 int IPPROTO_RAW ;
 int NETLINK_SOCK_DIAG ;
 int PF_NETLINK ;
 int * inet_protos ;
 int rcu_access_pointer (int ) ;
 int request_module (char*,int ,int ,int,...) ;
 int sock_is_registered (int) ;

int sock_load_diag_module(int family, int protocol)
{
 if (!protocol) {
  if (!sock_is_registered(family))
   return -ENOENT;

  return request_module("net-pf-%d-proto-%d-type-%d", PF_NETLINK,
          NETLINK_SOCK_DIAG, family);
 }
 return request_module("net-pf-%d-proto-%d-type-%d-%d", PF_NETLINK,
         NETLINK_SOCK_DIAG, family, protocol);
}
