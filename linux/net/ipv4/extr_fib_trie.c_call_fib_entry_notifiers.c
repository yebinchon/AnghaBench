
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct netlink_ext_ack* extack; } ;
struct fib_entry_notifier_info {int dst_len; TYPE_1__ info; int tb_id; int type; int tos; int fi; int dst; } ;
struct fib_alias {int tb_id; int fa_type; int fa_tos; int fa_info; } ;
typedef enum fib_event_type { ____Placeholder_fib_event_type } fib_event_type ;


 int call_fib4_notifiers (struct net*,int,TYPE_1__*) ;

__attribute__((used)) static int call_fib_entry_notifiers(struct net *net,
        enum fib_event_type event_type, u32 dst,
        int dst_len, struct fib_alias *fa,
        struct netlink_ext_ack *extack)
{
 struct fib_entry_notifier_info info = {
  .info.extack = extack,
  .dst = dst,
  .dst_len = dst_len,
  .fi = fa->fa_info,
  .tos = fa->fa_tos,
  .type = fa->fa_type,
  .tb_id = fa->tb_id,
 };
 return call_fib4_notifiers(net, event_type, &info.info);
}
