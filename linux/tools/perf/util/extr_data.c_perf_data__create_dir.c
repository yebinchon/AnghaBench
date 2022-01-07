
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_data_file {int fd; int path; } ;
struct TYPE_2__ {int nr; struct perf_data_file* files; int version; } ;
struct perf_data {int path; TYPE_1__ dir; int is_dir; } ;


 int EINVAL ;
 int ENOMEM ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PERF_DIR_VERSION ;
 int S_IRUSR ;
 int S_IWUSR ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ asprintf (int *,char*,int ,int) ;
 int close_dir (struct perf_data_file*,int) ;
 int open (int ,int,int) ;
 struct perf_data_file* zalloc (int) ;

int perf_data__create_dir(struct perf_data *data, int nr)
{
 struct perf_data_file *files = ((void*)0);
 int i, ret = -1;

 if (WARN_ON(!data->is_dir))
  return -EINVAL;

 files = zalloc(nr * sizeof(*files));
 if (!files)
  return -ENOMEM;

 data->dir.version = PERF_DIR_VERSION;
 data->dir.files = files;
 data->dir.nr = nr;

 for (i = 0; i < nr; i++) {
  struct perf_data_file *file = &files[i];

  if (asprintf(&file->path, "%s/data.%d", data->path, i) < 0)
   goto out_err;

  ret = open(file->path, O_RDWR|O_CREAT|O_TRUNC, S_IRUSR|S_IWUSR);
  if (ret < 0)
   goto out_err;

  file->fd = ret;
 }

 return 0;

out_err:
 close_dir(files, i);
 return ret;
}
