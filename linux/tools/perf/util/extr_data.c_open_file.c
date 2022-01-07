
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int path; } ;
struct perf_data {TYPE_1__ file; } ;


 int open_file_read (struct perf_data*) ;
 int open_file_write (struct perf_data*) ;
 scalar_t__ perf_data__is_read (struct perf_data*) ;
 int zfree (int *) ;

__attribute__((used)) static int open_file(struct perf_data *data)
{
 int fd;

 fd = perf_data__is_read(data) ?
      open_file_read(data) : open_file_write(data);

 if (fd < 0) {
  zfree(&data->file.path);
  return -1;
 }

 data->file.fd = fd;
 return 0;
}
