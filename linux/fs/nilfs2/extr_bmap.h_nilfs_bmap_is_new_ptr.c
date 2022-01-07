
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long NILFS_BMAP_NEW_PTR_INIT ;

__attribute__((used)) static inline int nilfs_bmap_is_new_ptr(unsigned long ptr)
{
 return !!(ptr & NILFS_BMAP_NEW_PTR_INIT);
}
