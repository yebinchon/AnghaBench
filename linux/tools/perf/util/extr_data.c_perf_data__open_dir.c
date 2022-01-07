
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; int st_mode; } ;
struct perf_data_file {int fd; int size; int path; } ;
struct TYPE_2__ {scalar_t__ version; int nr; struct perf_data_file* files; } ;
struct perf_data {char* path; TYPE_1__ dir; int is_dir; } ;
struct dirent {char* d_name; } ;
typedef int path ;
typedef int DIR ;


 int EINVAL ;
 int ENOMEM ;
 int O_RDONLY ;
 int PATH_MAX ;
 scalar_t__ PERF_DIR_VERSION ;
 int S_ISREG (int ) ;
 scalar_t__ WARN_ON (int) ;
 int close_dir (struct perf_data_file*,int) ;
 int open (int ,int ) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 struct perf_data_file* realloc (struct perf_data_file*,int) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strdup (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int perf_data__open_dir(struct perf_data *data)
{
 struct perf_data_file *files = ((void*)0);
 struct dirent *dent;
 int ret = -1;
 DIR *dir;
 int nr = 0;

 if (WARN_ON(!data->is_dir))
  return -EINVAL;


 if (WARN_ON(data->dir.version != PERF_DIR_VERSION))
  return -1;

 dir = opendir(data->path);
 if (!dir)
  return -EINVAL;

 while ((dent = readdir(dir)) != ((void*)0)) {
  struct perf_data_file *file;
  char path[PATH_MAX];
  struct stat st;

  snprintf(path, sizeof(path), "%s/%s", data->path, dent->d_name);
  if (stat(path, &st))
   continue;

  if (!S_ISREG(st.st_mode) || strncmp(dent->d_name, "data", 4))
   continue;

  ret = -ENOMEM;

  file = realloc(files, (nr + 1) * sizeof(*files));
  if (!file)
   goto out_err;

  files = file;
  file = &files[nr++];

  file->path = strdup(path);
  if (!file->path)
   goto out_err;

  ret = open(file->path, O_RDONLY);
  if (ret < 0)
   goto out_err;

  file->fd = ret;
  file->size = st.st_size;
 }

 if (!files)
  return -EINVAL;

 data->dir.files = files;
 data->dir.nr = nr;
 return 0;

out_err:
 close_dir(files, nr);
 return ret;
}
