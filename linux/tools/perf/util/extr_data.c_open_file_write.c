
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
struct perf_data {TYPE_1__ file; } ;
typedef int sbuf ;


 int O_CLOEXEC ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int STRERR_BUFSIZE ;
 int S_IRUSR ;
 int S_IWUSR ;
 int errno ;
 int open (int ,int,int) ;
 int pr_err (char*,int ,int ) ;
 int str_error_r (int ,char*,int) ;

__attribute__((used)) static int open_file_write(struct perf_data *data)
{
 int fd;
 char sbuf[STRERR_BUFSIZE];

 fd = open(data->file.path, O_CREAT|O_RDWR|O_TRUNC|O_CLOEXEC,
    S_IRUSR|S_IWUSR);

 if (fd < 0)
  pr_err("failed to open %s : %s\n", data->file.path,
   str_error_r(errno, sbuf, sizeof(sbuf)));

 return fd;
}
