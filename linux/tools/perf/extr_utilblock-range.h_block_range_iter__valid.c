
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_range_iter {int end; int start; } ;



__attribute__((used)) static inline bool block_range_iter__valid(struct block_range_iter *iter)
{
 if (!iter->start || !iter->end)
  return 0;
 return 1;
}
