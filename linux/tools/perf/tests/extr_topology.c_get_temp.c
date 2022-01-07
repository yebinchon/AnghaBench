
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEMPL ;
 int close (int) ;
 int mkstemp (char*) ;
 int perror (char*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int get_temp(char *path)
{
 int fd;

 strcpy(path, TEMPL);

 fd = mkstemp(path);
 if (fd < 0) {
  perror("mkstemp failed");
  return -1;
 }

 close(fd);
 return 0;
}
