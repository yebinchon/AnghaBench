
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int start; int last; } ;


 int max_endpoint ;
 int nnodes ;
 TYPE_1__* nodes ;
 int nsearches ;
 int prandom_u32_state (int *) ;
 int* queries ;
 int rnd ;

__attribute__((used)) static void init(void)
{
 int i;

 for (i = 0; i < nnodes; i++) {
  u32 b = (prandom_u32_state(&rnd) >> 4) % max_endpoint;
  u32 a = (prandom_u32_state(&rnd) >> 4) % b;

  nodes[i].start = a;
  nodes[i].last = b;
 }






 for (i = 0; i < nsearches; i++)
  queries[i] = (prandom_u32_state(&rnd) >> 4) % max_endpoint;
}
