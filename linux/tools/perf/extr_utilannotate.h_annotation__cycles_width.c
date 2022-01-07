
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct annotation {scalar_t__ have_cycles; TYPE_1__* options; } ;
struct TYPE_2__ {scalar_t__ show_minmax_cycle; } ;


 int ANNOTATION__CYCLES_WIDTH ;
 int ANNOTATION__IPC_WIDTH ;
 int ANNOTATION__MINMAX_CYCLES_WIDTH ;

__attribute__((used)) static inline int annotation__cycles_width(struct annotation *notes)
{
 if (notes->have_cycles && notes->options->show_minmax_cycle)
  return ANNOTATION__IPC_WIDTH + ANNOTATION__MINMAX_CYCLES_WIDTH;

 return notes->have_cycles ? ANNOTATION__IPC_WIDTH + ANNOTATION__CYCLES_WIDTH : 0;
}
