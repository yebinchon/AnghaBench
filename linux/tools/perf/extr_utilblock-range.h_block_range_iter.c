
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_range_iter {struct block_range* start; } ;
struct block_range {int dummy; } ;



__attribute__((used)) static inline struct block_range *block_range_iter(struct block_range_iter *iter)
{
 return iter->start;
}
