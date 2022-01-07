
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs_access_entry {int mask; } ;



void nfs_access_set_mask(struct nfs_access_entry *entry, u32 access_result)
{
 entry->mask = access_result;
}
