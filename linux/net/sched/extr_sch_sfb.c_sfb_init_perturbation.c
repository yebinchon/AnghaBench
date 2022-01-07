
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sfb_sched_data {TYPE_1__* bins; } ;
struct TYPE_2__ {int perturbation; } ;


 int get_random_bytes (int *,int) ;

__attribute__((used)) static void sfb_init_perturbation(u32 slot, struct sfb_sched_data *q)
{
 get_random_bytes(&q->bins[slot].perturbation,
    sizeof(q->bins[slot].perturbation));
}
