
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct extent_info {unsigned int fofs; unsigned int len; int blk; } ;



__attribute__((used)) static inline void set_extent_info(struct extent_info *ei, unsigned int fofs,
      u32 blk, unsigned int len)
{
 ei->fofs = fofs;
 ei->blk = blk;
 ei->len = len;
}
