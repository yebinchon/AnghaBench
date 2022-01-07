
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
struct perf_data {TYPE_1__ file; int path; } ;


 int ENOMEM ;
 int open_file (struct perf_data*) ;
 int strdup (int ) ;

__attribute__((used)) static int open_file_dup(struct perf_data *data)
{
 data->file.path = strdup(data->path);
 if (!data->file.path)
  return -ENOMEM;

 return open_file(data);
}
