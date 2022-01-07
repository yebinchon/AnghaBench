
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rb_node; } ;


 TYPE_1__ swsusp_extents ;

int swsusp_swap_in_use(void)
{
 return (swsusp_extents.rb_node != ((void*)0));
}
