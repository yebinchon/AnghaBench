
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WORK_STRUCT_COLOR_SHIFT ;

__attribute__((used)) static unsigned int work_color_to_flags(int color)
{
 return color << WORK_STRUCT_COLOR_SHIFT;
}
