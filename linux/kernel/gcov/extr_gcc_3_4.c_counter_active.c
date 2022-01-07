
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {int ctr_mask; } ;



__attribute__((used)) static int counter_active(struct gcov_info *info, unsigned int type)
{
 return (1 << type) & info->ctr_mask;
}
