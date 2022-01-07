
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {struct gcov_info* next; } ;


 struct gcov_info* gcov_info_head ;

struct gcov_info *gcov_info_next(struct gcov_info *info)
{
 if (!info)
  return gcov_info_head;

 return info->next;
}
