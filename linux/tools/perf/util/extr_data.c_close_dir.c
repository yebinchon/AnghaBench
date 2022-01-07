
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_data_file {int path; int fd; } ;


 int close (int ) ;
 int free (struct perf_data_file*) ;
 int zfree (int *) ;

__attribute__((used)) static void close_dir(struct perf_data_file *files, int nr)
{
 while (--nr >= 1) {
  close(files[nr].fd);
  zfree(&files[nr].path);
 }
 free(files);
}
