
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WORK_NR_COLORS ;

__attribute__((used)) static int work_next_color(int color)
{
 return (color + 1) % WORK_NR_COLORS;
}
