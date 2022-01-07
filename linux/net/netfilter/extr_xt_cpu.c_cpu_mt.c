
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_cpu_info {scalar_t__ cpu; int invert; } ;
struct xt_action_param {struct xt_cpu_info* matchinfo; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ smp_processor_id () ;

__attribute__((used)) static bool cpu_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_cpu_info *info = par->matchinfo;

 return (info->cpu == smp_processor_id()) ^ info->invert;
}
