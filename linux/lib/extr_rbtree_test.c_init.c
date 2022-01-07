
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* val; void* key; } ;


 int nnodes ;
 TYPE_1__* nodes ;
 void* prandom_u32_state (int *) ;
 int rnd ;

__attribute__((used)) static void init(void)
{
 int i;
 for (i = 0; i < nnodes; i++) {
  nodes[i].key = prandom_u32_state(&rnd);
  nodes[i].val = prandom_u32_state(&rnd);
 }
}
