
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int dummy; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ he_weight (struct hist_entry*) ;

__attribute__((used)) static int64_t
sort__local_weight_cmp(struct hist_entry *left, struct hist_entry *right)
{
 return he_weight(left) - he_weight(right);
}
