
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int O_RDONLY ;
 unsigned long long ULLONG_MAX ;
 int close (int) ;
 int open (char const*,int ) ;
 scalar_t__ read (int,char*,int) ;
 unsigned long long strtoull (char*,int *,int) ;

__attribute__((used)) static int filename__read_ull_base(const char *filename,
       unsigned long long *value, int base)
{
 char line[64];
 int fd = open(filename, O_RDONLY), err = -1;

 if (fd < 0)
  return -1;

 if (read(fd, line, sizeof(line)) > 0) {
  *value = strtoull(line, ((void*)0), base);
  if (*value != ULLONG_MAX)
   err = 0;
 }

 close(fd);
 return err;
}
