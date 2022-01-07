
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;


 int SWAP_HAS_CACHE ;
 int __swap_duplicate (int ,int ) ;

int swapcache_prepare(swp_entry_t entry)
{
 return __swap_duplicate(entry, SWAP_HAS_CACHE);
}
