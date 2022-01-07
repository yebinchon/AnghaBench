
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {scalar_t__* merge; } ;



__attribute__((used)) static int counter_active(struct gcov_info *info, unsigned int type)
{
 return info->merge[type] ? 1 : 0;
}
