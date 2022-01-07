
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {scalar_t__ priority; } ;



int fsnotify_compare_groups(struct fsnotify_group *a, struct fsnotify_group *b)
{
 if (a == b)
  return 0;
 if (!a)
  return 1;
 if (!b)
  return -1;
 if (a->priority < b->priority)
  return 1;
 if (a->priority > b->priority)
  return -1;
 if (a < b)
  return 1;
 return -1;
}
