
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
struct perf_data {int path; TYPE_1__ file; } ;


 int S_IRWXU ;
 scalar_t__ asprintf (int *,char*,int ) ;
 scalar_t__ mkdir (int ,int ) ;
 int open_file (struct perf_data*) ;
 scalar_t__ perf_data__is_write (struct perf_data*) ;
 int rm_rf_perf_data (int ) ;

__attribute__((used)) static int open_dir(struct perf_data *data)
{
 int ret;





 if (asprintf(&data->file.path, "%s/header", data->path) < 0)
  return -1;

 if (perf_data__is_write(data) &&
     mkdir(data->path, S_IRWXU) < 0)
  return -1;

 ret = open_file(data);


 if (ret && perf_data__is_write(data))
  rm_rf_perf_data(data->path);

 return ret;
}
