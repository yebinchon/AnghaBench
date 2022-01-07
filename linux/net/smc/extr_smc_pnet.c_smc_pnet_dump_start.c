
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_callback {scalar_t__* args; } ;



__attribute__((used)) static int smc_pnet_dump_start(struct netlink_callback *cb)
{
 cb->args[0] = 0;
 return 0;
}
