
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xol_area {int dummy; } ;
struct TYPE_3__ {int xol_area; } ;
struct mm_struct {TYPE_1__ uprobes_state; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 struct xol_area* READ_ONCE (int ) ;
 int __create_xol_area (int ) ;
 TYPE_2__* current ;

__attribute__((used)) static struct xol_area *get_xol_area(void)
{
 struct mm_struct *mm = current->mm;
 struct xol_area *area;

 if (!mm->uprobes_state.xol_area)
  __create_xol_area(0);


 area = READ_ONCE(mm->uprobes_state.xol_area);
 return area;
}
