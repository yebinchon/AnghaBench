
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u64 ;
struct perf_data_file {scalar_t__ size; } ;
struct TYPE_4__ {int nr; struct perf_data_file* files; } ;
struct TYPE_3__ {unsigned long size; } ;
struct perf_data {TYPE_2__ dir; int is_dir; TYPE_1__ file; } ;



unsigned long perf_data__size(struct perf_data *data)
{
 u64 size = data->file.size;
 int i;

 if (!data->is_dir)
  return size;

 for (i = 0; i < data->dir.nr; i++) {
  struct perf_data_file *file = &data->dir.files[i];

  size += file->size;
 }

 return size;
}
