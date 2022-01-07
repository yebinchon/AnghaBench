
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 scalar_t__ use_pfn ;

__attribute__((used)) static bool valid_page(u64 pfn_or_page)
{
 if (use_pfn && pfn_or_page == -1UL)
  return 0;
 if (!use_pfn && pfn_or_page == 0)
  return 0;
 return 1;
}
