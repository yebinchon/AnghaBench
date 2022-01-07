
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file_size; } ;
struct dso {TYPE_1__ data; } ;
struct addr_filter {int size; scalar_t__ addr; int filename; } ;


 int EINVAL ;
 scalar_t__ dso__data_file_size (struct dso*,int *) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int addr_filter__entire_dso(struct addr_filter *filt, struct dso *dso)
{
 if (dso__data_file_size(dso, ((void*)0))) {
  pr_err("Failed to determine filter for %s\nCannot determine file size.\n",
         filt->filename);
  return -EINVAL;
 }

 filt->addr = 0;
 filt->size = dso->data.file_size;

 return 0;
}
