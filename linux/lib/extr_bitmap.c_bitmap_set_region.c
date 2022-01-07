
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct region {int end; unsigned int start; int off; scalar_t__ group_len; } ;


 int ERANGE ;
 int bitmap_set (unsigned long*,unsigned int,int ) ;
 int min (unsigned int,int ) ;

__attribute__((used)) static int bitmap_set_region(const struct region *r,
    unsigned long *bitmap, int nbits)
{
 unsigned int start;

 if (r->end >= nbits)
  return -ERANGE;

 for (start = r->start; start <= r->end; start += r->group_len)
  bitmap_set(bitmap, start, min(r->end - start + 1, r->off));

 return 0;
}
