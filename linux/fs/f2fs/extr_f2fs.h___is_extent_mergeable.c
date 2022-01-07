
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_info {scalar_t__ fofs; scalar_t__ len; scalar_t__ blk; } ;



__attribute__((used)) static inline bool __is_extent_mergeable(struct extent_info *back,
      struct extent_info *front)
{
 return (back->fofs + back->len == front->fofs &&
   back->blk + back->len == front->blk);
}
