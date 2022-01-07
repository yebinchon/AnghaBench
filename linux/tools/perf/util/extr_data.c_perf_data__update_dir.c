
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; } ;
struct perf_data_file {int size; int fd; } ;
struct TYPE_2__ {int nr; struct perf_data_file* files; } ;
struct perf_data {TYPE_1__ dir; int is_dir; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ fstat (int ,struct stat*) ;

int perf_data__update_dir(struct perf_data *data)
{
 int i;

 if (WARN_ON(!data->is_dir))
  return -EINVAL;

 for (i = 0; i < data->dir.nr; i++) {
  struct perf_data_file *file = &data->dir.files[i];
  struct stat st;

  if (fstat(file->fd, &st))
   return -1;

  file->size = st.st_size;
 }

 return 0;
}
