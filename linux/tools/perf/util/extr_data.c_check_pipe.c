
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_2__ {int fd; } ;
struct perf_data {int is_pipe; TYPE_1__ file; int path; } ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ S_ISFIFO (int ) ;
 int fstat (int,struct stat*) ;
 scalar_t__ perf_data__is_read (struct perf_data*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static bool check_pipe(struct perf_data *data)
{
 struct stat st;
 bool is_pipe = 0;
 int fd = perf_data__is_read(data) ?
   STDIN_FILENO : STDOUT_FILENO;

 if (!data->path) {
  if (!fstat(fd, &st) && S_ISFIFO(st.st_mode))
   is_pipe = 1;
 } else {
  if (!strcmp(data->path, "-"))
   is_pipe = 1;
 }

 if (is_pipe)
  data->file.fd = fd;

 return data->is_pipe = is_pipe;
}
