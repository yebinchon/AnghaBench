
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct perf_data {int path; } ;


 int S_IFDIR ;
 int S_IFMT ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static bool is_dir(struct perf_data *data)
{
 struct stat st;

 if (stat(data->path, &st))
  return 0;

 return (st.st_mode & S_IFMT) == S_IFDIR;
}
