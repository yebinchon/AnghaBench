
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {int head; } ;


 int clang_gcov_list ;
 int list_add_tail (int *,int *) ;

void gcov_info_link(struct gcov_info *info)
{
 list_add_tail(&info->head, &clang_gcov_list);
}
