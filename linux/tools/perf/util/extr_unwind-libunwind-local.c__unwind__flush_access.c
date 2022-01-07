
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int addr_space; } ;


 int unw_flush_cache (int ,int ,int ) ;

__attribute__((used)) static void _unwind__flush_access(struct map_groups *mg)
{
 unw_flush_cache(mg->addr_space, 0, 0);
}
