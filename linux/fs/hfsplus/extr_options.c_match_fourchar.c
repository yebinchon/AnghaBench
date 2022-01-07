
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int to; int from; } ;
typedef TYPE_1__ substring_t ;


 int EINVAL ;
 int memcpy (int *,int,int) ;

__attribute__((used)) static inline int match_fourchar(substring_t *arg, u32 *result)
{
 if (arg->to - arg->from != 4)
  return -EINVAL;
 memcpy(result, arg->from, 4);
 return 0;
}
