
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int addr_space; } ;


 int ENOMEM ;
 int UNW_CACHE_GLOBAL ;
 int accessors ;
 int pr_err (char*) ;
 int unw_create_addr_space (int *,int ) ;
 int unw_set_caching_policy (int ,int ) ;

__attribute__((used)) static int _unwind__prepare_access(struct map_groups *mg)
{
 mg->addr_space = unw_create_addr_space(&accessors, 0);
 if (!mg->addr_space) {
  pr_err("unwind: Can't create unwind address space.\n");
  return -ENOMEM;
 }

 unw_set_caching_policy(mg->addr_space, UNW_CACHE_GLOBAL);
 return 0;
}
