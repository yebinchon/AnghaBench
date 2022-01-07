
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_range_iter {scalar_t__ start; scalar_t__ end; } ;


 scalar_t__ block_range__next (scalar_t__) ;

__attribute__((used)) static inline bool block_range_iter__next(struct block_range_iter *iter)
{
 if (iter->start == iter->end)
  return 0;

 iter->start = block_range__next(iter->start);
 return 1;
}
