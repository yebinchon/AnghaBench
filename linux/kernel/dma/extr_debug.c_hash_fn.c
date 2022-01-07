
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {int dev_addr; } ;


 int HASH_FN_MASK ;
 int HASH_FN_SHIFT ;

__attribute__((used)) static int hash_fn(struct dma_debug_entry *entry)
{




 return (entry->dev_addr >> HASH_FN_SHIFT) & HASH_FN_MASK;
}
