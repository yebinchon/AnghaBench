
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_extent {int len; int blk; int fofs; } ;
struct extent_info {void* len; void* blk; void* fofs; } ;


 void* le32_to_cpu (int ) ;

__attribute__((used)) static inline void get_extent_info(struct extent_info *ext,
     struct f2fs_extent *i_ext)
{
 ext->fofs = le32_to_cpu(i_ext->fofs);
 ext->blk = le32_to_cpu(i_ext->blk);
 ext->len = le32_to_cpu(i_ext->len);
}
