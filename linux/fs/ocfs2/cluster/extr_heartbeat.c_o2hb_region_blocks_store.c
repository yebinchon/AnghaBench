
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {unsigned int hr_blocks; scalar_t__ hr_bdev; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ERANGE ;
 unsigned long O2NM_MAX_NODES ;
 unsigned long simple_strtoul (char*,char**,int ) ;
 struct o2hb_region* to_o2hb_region (struct config_item*) ;

__attribute__((used)) static ssize_t o2hb_region_blocks_store(struct config_item *item,
     const char *page,
     size_t count)
{
 struct o2hb_region *reg = to_o2hb_region(item);
 unsigned long tmp;
 char *p = (char *)page;

 if (reg->hr_bdev)
  return -EINVAL;

 tmp = simple_strtoul(p, &p, 0);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;

 if (tmp > O2NM_MAX_NODES || tmp == 0)
  return -ERANGE;

 reg->hr_blocks = (unsigned int)tmp;

 return count;
}
