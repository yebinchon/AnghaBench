
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int orangefs_inode_cache ;

int orangefs_inode_cache_finalize(void)
{
 kmem_cache_destroy(orangefs_inode_cache);
 return 0;
}
