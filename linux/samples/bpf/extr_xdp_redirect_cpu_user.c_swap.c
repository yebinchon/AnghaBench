
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_record {int dummy; } ;



__attribute__((used)) static inline void swap(struct stats_record **a, struct stats_record **b)
{
 struct stats_record *tmp;

 tmp = *a;
 *a = *b;
 *b = tmp;
}
