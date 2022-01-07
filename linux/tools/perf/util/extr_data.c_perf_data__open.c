
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_data {char* path; int is_dir; } ;


 scalar_t__ check_backup (struct perf_data*) ;
 scalar_t__ check_pipe (struct perf_data*) ;
 int is_dir (struct perf_data*) ;
 int open_dir (struct perf_data*) ;
 int open_file_dup (struct perf_data*) ;
 scalar_t__ perf_data__is_dir (struct perf_data*) ;
 scalar_t__ perf_data__is_read (struct perf_data*) ;

int perf_data__open(struct perf_data *data)
{
 if (check_pipe(data))
  return 0;

 if (!data->path)
  data->path = "perf.data";

 if (check_backup(data))
  return -1;

 if (perf_data__is_read(data))
  data->is_dir = is_dir(data);

 return perf_data__is_dir(data) ?
        open_dir(data) : open_file_dup(data);
}
