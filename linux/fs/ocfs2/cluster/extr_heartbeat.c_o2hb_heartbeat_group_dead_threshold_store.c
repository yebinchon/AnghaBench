
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int o2hb_dead_threshold_set (unsigned int) ;
 unsigned long simple_strtoul (char*,char**,int) ;

__attribute__((used)) static ssize_t o2hb_heartbeat_group_dead_threshold_store(struct config_item *item,
  const char *page, size_t count)
{
 unsigned long tmp;
 char *p = (char *)page;

 tmp = simple_strtoul(p, &p, 10);
 if (!p || (*p && (*p != '\n')))
                return -EINVAL;


 o2hb_dead_threshold_set((unsigned int) tmp);

 return count;
}
