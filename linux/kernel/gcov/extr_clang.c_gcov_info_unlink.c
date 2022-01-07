
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {int head; } ;


 int __list_del_entry (int *) ;

void gcov_info_unlink(struct gcov_info *prev, struct gcov_info *info)
{

 __list_del_entry(&info->head);
}
