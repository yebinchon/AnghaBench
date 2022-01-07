
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int O_RDONLY ;
 int atoi (char*) ;
 int close (int) ;
 int open (char const*,int ) ;
 scalar_t__ read (int,char*,int) ;

int filename__read_int(const char *filename, int *value)
{
 char line[64];
 int fd = open(filename, O_RDONLY), err = -1;

 if (fd < 0)
  return -1;

 if (read(fd, line, sizeof(line)) > 0) {
  *value = atoi(line);
  err = 0;
 }

 close(fd);
 return err;
}
