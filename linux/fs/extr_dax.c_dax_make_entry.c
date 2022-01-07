
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pfn_t ;


 unsigned long DAX_SHIFT ;
 unsigned long pfn_t_to_pfn (int ) ;
 void* xa_mk_value (unsigned long) ;

__attribute__((used)) static void *dax_make_entry(pfn_t pfn, unsigned long flags)
{
 return xa_mk_value(flags | (pfn_t_to_pfn(pfn) << DAX_SHIFT));
}
