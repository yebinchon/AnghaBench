
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct annotation_line {int data_nr; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ percent_sum; } ;



__attribute__((used)) static int cmp_source_line(struct annotation_line *a, struct annotation_line *b)
{
 int i;

 for (i = 0; i < a->data_nr; i++) {
  if (a->data[i].percent_sum == b->data[i].percent_sum)
   continue;
  return a->data[i].percent_sum > b->data[i].percent_sum;
 }

 return 0;
}
