
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;


 int SWAP_MAP_SHMEM ;
 int __swap_duplicate (int ,int ) ;

void swap_shmem_alloc(swp_entry_t entry)
{
 __swap_duplicate(entry, SWAP_MAP_SHMEM);
}
