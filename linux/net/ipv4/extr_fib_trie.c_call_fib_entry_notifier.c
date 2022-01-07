
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct notifier_block {int dummy; } ;
struct net {int dummy; } ;
struct fib_entry_notifier_info {int dst_len; int info; int tb_id; int type; int tos; int fi; int dst; } ;
struct fib_alias {int tb_id; int fa_type; int fa_tos; int fa_info; } ;
typedef enum fib_event_type { ____Placeholder_fib_event_type } fib_event_type ;


 int call_fib4_notifier (struct notifier_block*,struct net*,int,int *) ;

__attribute__((used)) static int call_fib_entry_notifier(struct notifier_block *nb, struct net *net,
       enum fib_event_type event_type, u32 dst,
       int dst_len, struct fib_alias *fa)
{
 struct fib_entry_notifier_info info = {
  .dst = dst,
  .dst_len = dst_len,
  .fi = fa->fa_info,
  .tos = fa->fa_tos,
  .type = fa->fa_type,
  .tb_id = fa->tb_id,
 };
 return call_fib4_notifier(nb, net, event_type, &info.info);
}
