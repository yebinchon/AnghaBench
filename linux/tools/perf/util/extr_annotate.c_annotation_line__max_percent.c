
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotation_line {int * data; } ;
struct annotation {int nr_events; } ;


 double annotation_data__percent (int *,unsigned int) ;

__attribute__((used)) static double annotation_line__max_percent(struct annotation_line *al,
        struct annotation *notes,
        unsigned int percent_type)
{
 double percent_max = 0.0;
 int i;

 for (i = 0; i < notes->nr_events; i++) {
  double percent;

  percent = annotation_data__percent(&al->data[i],
         percent_type);

  if (percent > percent_max)
   percent_max = percent;
 }

 return percent_max;
}
