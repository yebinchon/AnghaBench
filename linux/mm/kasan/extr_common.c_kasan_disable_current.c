
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kasan_depth; } ;


 TYPE_1__* current ;

void kasan_disable_current(void)
{
 current->kasan_depth--;
}
