
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct choke_sched_data {unsigned int tail; unsigned int head; unsigned int tab_mask; } ;



__attribute__((used)) static unsigned int choke_len(const struct choke_sched_data *q)
{
 return (q->tail - q->head) & q->tab_mask;
}
