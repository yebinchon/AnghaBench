
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int WORK_STRUCT_COLOR_BITS ;
 int WORK_STRUCT_COLOR_SHIFT ;
 int* work_data_bits (struct work_struct*) ;

__attribute__((used)) static int get_work_color(struct work_struct *work)
{
 return (*work_data_bits(work) >> WORK_STRUCT_COLOR_SHIFT) &
  ((1 << WORK_STRUCT_COLOR_BITS) - 1);
}
