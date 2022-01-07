
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ unw_addr_space_t ;


 int accessors ;
 int dwarf_search_unwind_table (scalar_t__,int ,int *,int *,int ,int *) ;
 scalar_t__ unw_create_addr_space (int *,int ) ;
 int unw_init_remote (int *,scalar_t__,int *) ;

int main(void)
{
 unw_addr_space_t addr_space;

 addr_space = unw_create_addr_space(&accessors, 0);
 if (addr_space)
  return 0;

 unw_init_remote(((void*)0), addr_space, ((void*)0));
 dwarf_search_unwind_table(addr_space, 0, ((void*)0), ((void*)0), 0, ((void*)0));

 return 0;
}
