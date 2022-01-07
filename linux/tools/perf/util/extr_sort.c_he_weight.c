
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int nr_events; int weight; } ;
struct hist_entry {TYPE_1__ stat; } ;



__attribute__((used)) static u64 he_weight(struct hist_entry *he)
{
 return he->stat.nr_events ? he->stat.weight / he->stat.nr_events : 0;
}
