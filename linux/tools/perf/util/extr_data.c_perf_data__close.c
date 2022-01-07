
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int path; } ;
struct perf_data {TYPE_1__ file; } ;


 int close (int ) ;
 int perf_data__close_dir (struct perf_data*) ;
 scalar_t__ perf_data__is_dir (struct perf_data*) ;
 int zfree (int *) ;

void perf_data__close(struct perf_data *data)
{
 if (perf_data__is_dir(data))
  perf_data__close_dir(data);

 zfree(&data->file.path);
 close(data->file.fd);
}
