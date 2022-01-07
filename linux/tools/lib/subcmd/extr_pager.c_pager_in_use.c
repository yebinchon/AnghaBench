
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spawned_pager ;

int pager_in_use(void)
{
 return spawned_pager;
}
