
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cgroup_subsys_on_dfl (int ) ;
 scalar_t__ do_swap_account ;
 int memory_cgrp_subsys ;

__attribute__((used)) static bool do_memsw_account(void)
{
 return !cgroup_subsys_on_dfl(memory_cgrp_subsys) && do_swap_account;
}
