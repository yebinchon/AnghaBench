
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hk_flags { ____Placeholder_hk_flags } hk_flags ;


 int housekeeping_flags ;

bool housekeeping_enabled(enum hk_flags flags)
{
 return !!(housekeeping_flags & flags);
}
