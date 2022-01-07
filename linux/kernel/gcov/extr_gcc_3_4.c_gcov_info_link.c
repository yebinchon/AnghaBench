
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {struct gcov_info* next; } ;


 struct gcov_info* gcov_info_head ;

void gcov_info_link(struct gcov_info *info)
{
 info->next = gcov_info_head;
 gcov_info_head = info;
}
