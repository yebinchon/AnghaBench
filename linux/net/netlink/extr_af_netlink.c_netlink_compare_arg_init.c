
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlink_compare_arg {int portid; int pnet; } ;
struct net {int dummy; } ;


 int memset (struct netlink_compare_arg*,int ,int) ;
 int write_pnet (int *,struct net*) ;

__attribute__((used)) static void netlink_compare_arg_init(struct netlink_compare_arg *arg,
         struct net *net, u32 portid)
{
 memset(arg, 0, sizeof(*arg));
 write_pnet(&arg->pnet, net);
 arg->portid = portid;
}
