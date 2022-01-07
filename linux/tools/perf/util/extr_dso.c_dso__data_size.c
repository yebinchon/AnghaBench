
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct machine {int dummy; } ;
struct TYPE_2__ {int file_size; } ;
struct dso {TYPE_1__ data; } ;
typedef int off_t ;


 scalar_t__ dso__data_file_size (struct dso*,struct machine*) ;

off_t dso__data_size(struct dso *dso, struct machine *machine)
{
 if (dso__data_file_size(dso, machine))
  return -1;


 return dso->data.file_size;
}
