
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfq_sched_data {int headdrop; } ;



__attribute__((used)) static int sfq_headdrop(const struct sfq_sched_data *q)
{
 return q->headdrop;
}
