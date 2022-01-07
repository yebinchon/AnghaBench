
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {int dummy; } ;


 int cmp_range ;
 int sort (struct range*,int,int,int ,int *) ;

void sort_range(struct range *range, int nr_range)
{

 sort(range, nr_range, sizeof(struct range), cmp_range, ((void*)0));
}
