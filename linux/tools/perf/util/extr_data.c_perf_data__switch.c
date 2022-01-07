
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct perf_data {TYPE_1__ file; int path; } ;
typedef scalar_t__ off_t ;


 int EINVAL ;
 int ENOMEM ;
 int SEEK_SET ;
 scalar_t__ asprintf (char**,char*,int ,char const*) ;
 scalar_t__ check_pipe (struct perf_data*) ;
 int close (int) ;
 int errno ;
 scalar_t__ lseek (int,size_t,int ) ;
 scalar_t__ perf_data__is_read (struct perf_data*) ;
 int perf_data__open (struct perf_data*) ;
 int pr_debug (char*,size_t,int ) ;
 int pr_warning (char*,int ,char*) ;
 scalar_t__ rename (int ,char*) ;
 int strerror (int) ;

int perf_data__switch(struct perf_data *data,
      const char *postfix,
      size_t pos, bool at_exit,
      char **new_filepath)
{
 int ret;

 if (check_pipe(data))
  return -EINVAL;
 if (perf_data__is_read(data))
  return -EINVAL;

 if (asprintf(new_filepath, "%s.%s", data->path, postfix) < 0)
  return -ENOMEM;





 if (rename(data->path, *new_filepath))
  pr_warning("Failed to rename %s to %s\n", data->path, *new_filepath);

 if (!at_exit) {
  close(data->file.fd);
  ret = perf_data__open(data);
  if (ret < 0)
   goto out;

  if (lseek(data->file.fd, pos, SEEK_SET) == (off_t)-1) {
   ret = -errno;
   pr_debug("Failed to lseek to %zu: %s",
     pos, strerror(errno));
   goto out;
  }
 }
 ret = data->file.fd;
out:
 return ret;
}
