
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int GFP_TRANSHUGE ;
 int GFP_TRANSHUGE_LIGHT ;
 scalar_t__ khugepaged_defrag () ;

__attribute__((used)) static inline gfp_t alloc_hugepage_khugepaged_gfpmask(void)
{
 return khugepaged_defrag() ? GFP_TRANSHUGE : GFP_TRANSHUGE_LIGHT;
}
