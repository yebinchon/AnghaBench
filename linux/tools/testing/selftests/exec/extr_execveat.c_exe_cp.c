
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int close (int) ;
 int fstat (int,struct stat*) ;
 int open (char const*,int,int) ;
 int open_or_die (char const*,int ) ;
 int sendfile (int,int,int *,int ) ;

__attribute__((used)) static void exe_cp(const char *src, const char *dest)
{
 int in_fd = open_or_die(src, O_RDONLY);
 int out_fd = open(dest, O_RDWR|O_CREAT|O_TRUNC, 0755);
 struct stat info;

 fstat(in_fd, &info);
 sendfile(out_fd, in_fd, ((void*)0), info.st_size);
 close(in_fd);
 close(out_fd);
}
