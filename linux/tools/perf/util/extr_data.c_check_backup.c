
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
struct perf_data {char* path; } ;
typedef int oldname ;


 int PATH_MAX ;
 int errno ;
 scalar_t__ perf_data__is_read (struct perf_data*) ;
 int pr_err (char*,char*,char*,...) ;
 scalar_t__ rename (char*,char*) ;
 int rm_rf_perf_data (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int stat (char*,struct stat*) ;
 char* strerror (int ) ;

__attribute__((used)) static int check_backup(struct perf_data *data)
{
 struct stat st;

 if (perf_data__is_read(data))
  return 0;

 if (!stat(data->path, &st) && st.st_size) {
  char oldname[PATH_MAX];
  int ret;

  snprintf(oldname, sizeof(oldname), "%s.old",
    data->path);

  ret = rm_rf_perf_data(oldname);
  if (ret) {
   pr_err("Can't remove old data: %s (%s)\n",
          ret == -2 ?
          "Unknown file found" : strerror(errno),
          oldname);
   return -1;
  }

  if (rename(data->path, oldname)) {
   pr_err("Can't move data: %s (%s to %s)\n",
          strerror(errno),
          data->path, oldname);
   return -1;
  }
 }

 return 0;
}
