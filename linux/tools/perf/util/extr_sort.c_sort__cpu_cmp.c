
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {scalar_t__ cpu; } ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static int64_t
sort__cpu_cmp(struct hist_entry *left, struct hist_entry *right)
{
 return right->cpu - left->cpu;
}
