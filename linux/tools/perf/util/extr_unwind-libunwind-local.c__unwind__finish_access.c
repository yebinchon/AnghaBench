
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int addr_space; } ;


 int unw_destroy_addr_space (int ) ;

__attribute__((used)) static void _unwind__finish_access(struct map_groups *mg)
{
 unw_destroy_addr_space(mg->addr_space);
}
