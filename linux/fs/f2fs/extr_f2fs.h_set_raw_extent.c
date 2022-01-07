
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_extent {void* len; void* blk; void* fofs; } ;
struct extent_info {int len; int blk; int fofs; } ;


 void* cpu_to_le32 (int ) ;

__attribute__((used)) static inline void set_raw_extent(struct extent_info *ext,
     struct f2fs_extent *i_ext)
{
 i_ext->fofs = cpu_to_le32(ext->fofs);
 i_ext->blk = cpu_to_le32(ext->blk);
 i_ext->len = cpu_to_le32(ext->len);
}
