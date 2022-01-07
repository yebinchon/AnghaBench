
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int read_procfs(const char *path)
{
 char *endptr, *line = ((void*)0);
 size_t len = 0;
 FILE *fd;
 int res;

 fd = fopen(path, "r");
 if (!fd)
  return -1;

 res = getline(&line, &len, fd);
 fclose(fd);
 if (res < 0)
  return -1;

 errno = 0;
 res = strtol(line, &endptr, 10);
 if (errno || *line == '\0' || *endptr != '\n')
  res = -1;
 free(line);

 return res;
}
