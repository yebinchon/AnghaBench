
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (int) ;
 int fprintf (int ,char*) ;
 int open (char const*,int ) ;
 int stderr ;

void
hpet_open_close(int argc, const char **argv)
{
 int fd;

 if (argc != 1) {
  fprintf(stderr, "hpet_open_close: device-name\n");
  return;
 }

 fd = open(argv[0], O_RDONLY);
 if (fd < 0)
  fprintf(stderr, "hpet_open_close: open failed\n");
 else
  close(fd);

 return;
}
