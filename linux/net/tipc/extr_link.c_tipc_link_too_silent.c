
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {scalar_t__ silent_intv_cnt; scalar_t__ abort_limit; } ;



bool tipc_link_too_silent(struct tipc_link *l)
{
 return (l->silent_intv_cnt + 2 > l->abort_limit);
}
