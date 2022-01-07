
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlink_sock {int portid; int sk; } ;
struct netlink_compare_arg {int dummy; } ;


 int jhash2 (int *,int,int ) ;
 int netlink_compare_arg_init (struct netlink_compare_arg*,int ,int ) ;
 int netlink_compare_arg_len ;
 int sock_net (int *) ;

__attribute__((used)) static inline u32 netlink_hash(const void *data, u32 len, u32 seed)
{
 const struct netlink_sock *nlk = data;
 struct netlink_compare_arg arg;

 netlink_compare_arg_init(&arg, sock_net(&nlk->sk), nlk->portid);
 return jhash2((u32 *)&arg, netlink_compare_arg_len / sizeof(u32), seed);
}
