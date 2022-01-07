
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct annotation_line {int data_nr; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__* percent; } ;



__attribute__((used)) static double disasm__cmp(struct annotation_line *a, struct annotation_line *b,
        int percent_type)
{
 int i;

 for (i = 0; i < a->data_nr; i++) {
  if (a->data[i].percent[percent_type] == b->data[i].percent[percent_type])
   continue;
  return a->data[i].percent[percent_type] -
      b->data[i].percent[percent_type];
 }
 return 0;
}
