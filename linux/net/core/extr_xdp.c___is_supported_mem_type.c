
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xdp_mem_type { ____Placeholder_xdp_mem_type } xdp_mem_type ;


 int MEM_TYPE_MAX ;
 int MEM_TYPE_PAGE_POOL ;
 int is_page_pool_compiled_in () ;

__attribute__((used)) static bool __is_supported_mem_type(enum xdp_mem_type type)
{
 if (type == MEM_TYPE_PAGE_POOL)
  return is_page_pool_compiled_in();

 if (type >= MEM_TYPE_MAX)
  return 0;

 return 1;
}
