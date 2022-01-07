
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {scalar_t__ stamp; } ;



int gcov_info_is_compatible(struct gcov_info *info1, struct gcov_info *info2)
{
 return (info1->stamp == info2->stamp);
}
