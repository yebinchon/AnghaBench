
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SQUASHFS_CACHED_BLKS ;
 int SQUASHFS_META_ENTRIES ;
 int SQUASHFS_META_INDEXES ;
 int min (scalar_t__,int) ;

__attribute__((used)) static inline int calculate_skip(int blocks)
{
 int skip = blocks / ((SQUASHFS_META_ENTRIES + 1)
   * SQUASHFS_META_INDEXES);
 return min(SQUASHFS_CACHED_BLKS - 1, skip + 1);
}
