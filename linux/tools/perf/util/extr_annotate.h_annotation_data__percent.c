
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotation_data {double* percent; } ;


 unsigned int PERCENT_MAX ;

__attribute__((used)) static inline double annotation_data__percent(struct annotation_data *data,
           unsigned int which)
{
 return which < PERCENT_MAX ? data->percent[which] : -1;
}
