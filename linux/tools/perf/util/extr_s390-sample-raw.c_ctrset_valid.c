
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_ctrset_entry {scalar_t__ def; } ;


 scalar_t__ S390_CPUMCF_DIAG_DEF ;

__attribute__((used)) static bool ctrset_valid(struct cf_ctrset_entry *set)
{
 return set->def == S390_CPUMCF_DIAG_DEF;
}
