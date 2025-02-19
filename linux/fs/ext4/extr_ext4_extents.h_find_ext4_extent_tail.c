
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent_tail {int dummy; } ;
struct ext4_extent_header {int dummy; } ;


 int EXT4_EXTENT_TAIL_OFFSET (struct ext4_extent_header*) ;

__attribute__((used)) static inline struct ext4_extent_tail *
find_ext4_extent_tail(struct ext4_extent_header *eh)
{
 return (struct ext4_extent_tail *)(((void *)eh) +
        EXT4_EXTENT_TAIL_OFFSET(eh));
}
