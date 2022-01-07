
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct he_stat {int period; int nr_events; } ;



__attribute__((used)) static void he_stat__decay(struct he_stat *he_stat)
{
 he_stat->period = (he_stat->period * 7) / 8;
 he_stat->nr_events = (he_stat->nr_events * 7) / 8;

}
