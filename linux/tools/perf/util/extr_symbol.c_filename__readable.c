
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (int) ;
 int open (char const*,int ) ;

__attribute__((used)) static bool filename__readable(const char *file)
{
 int fd = open(file, O_RDONLY);
 if (fd < 0)
  return 0;
 close(fd);
 return 1;
}
