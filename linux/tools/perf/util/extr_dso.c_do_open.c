
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbuf ;


 scalar_t__ EMFILE ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int STRERR_BUFSIZE ;
 int close_first_dso () ;
 int dso__data_open_cnt ;
 scalar_t__ errno ;
 int open (char*,int) ;
 int pr_debug (char*,int ) ;
 int str_error_r (scalar_t__,char*,int) ;

__attribute__((used)) static int do_open(char *name)
{
 int fd;
 char sbuf[STRERR_BUFSIZE];

 do {
  fd = open(name, O_RDONLY|O_CLOEXEC);
  if (fd >= 0)
   return fd;

  pr_debug("dso open failed: %s\n",
    str_error_r(errno, sbuf, sizeof(sbuf)));
  if (!dso__data_open_cnt || errno != EMFILE)
   break;

  close_first_dso();
 } while (1);

 return -1;
}
