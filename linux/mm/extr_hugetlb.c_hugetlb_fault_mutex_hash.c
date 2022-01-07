
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hstate {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;



u32 hugetlb_fault_mutex_hash(struct hstate *h, struct address_space *mapping,
       pgoff_t idx, unsigned long address)
{
 return 0;
}
