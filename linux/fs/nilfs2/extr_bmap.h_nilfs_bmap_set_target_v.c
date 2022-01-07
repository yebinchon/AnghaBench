
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {void* b_last_allocated_ptr; void* b_last_allocated_key; } ;
typedef void* __u64 ;



__attribute__((used)) static inline void nilfs_bmap_set_target_v(struct nilfs_bmap *bmap, __u64 key,
        __u64 ptr)
{
 bmap->b_last_allocated_key = key;
 bmap->b_last_allocated_ptr = ptr;
}
