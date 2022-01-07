
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int atoi (char*) ;
 int close (int) ;
 int open (char*,int ) ;
 int urandom_read (int,int) ;

int main(int argc, char *argv[])
{
 int fd = open("/dev/urandom", O_RDONLY);
 int count = 4;

 if (fd < 0)
  return 1;

 if (argc == 2)
  count = atoi(argv[1]);

 urandom_read(fd, count);

 close(fd);
 return 0;
}
