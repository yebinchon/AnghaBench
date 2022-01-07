
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct region {scalar_t__ start; scalar_t__ end; scalar_t__ group_len; scalar_t__ off; } ;


 int EINVAL ;

__attribute__((used)) static int bitmap_check_region(const struct region *r)
{
 if (r->start > r->end || r->group_len == 0 || r->off > r->group_len)
  return -EINVAL;

 return 0;
}
