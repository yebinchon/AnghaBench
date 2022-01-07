
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ weight; } ;
struct hist_entry {TYPE_1__ stat; } ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static int64_t
sort__global_weight_cmp(struct hist_entry *left, struct hist_entry *right)
{
 return left->stat.weight - right->stat.weight;
}
