
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fib6_info {int dummy; } ;
struct fib6_dump_arg {TYPE_2__* net; int nb; } ;
struct TYPE_3__ {struct fib6_info* fib6_null_entry; } ;
struct TYPE_4__ {TYPE_1__ ipv6; } ;


 int FIB_EVENT_ENTRY_ADD ;
 int call_fib6_entry_notifier (int ,TYPE_2__*,int ,struct fib6_info*) ;

__attribute__((used)) static void fib6_rt_dump(struct fib6_info *rt, struct fib6_dump_arg *arg)
{
 if (rt == arg->net->ipv6.fib6_null_entry)
  return;
 call_fib6_entry_notifier(arg->nb, arg->net, FIB_EVENT_ENTRY_ADD, rt);
}
