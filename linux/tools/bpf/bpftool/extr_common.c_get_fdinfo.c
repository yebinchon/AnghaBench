
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int path ;
typedef int FILE ;


 int PATH_MAX ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int memmove (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strstr (char*,char const*) ;

char *get_fdinfo(int fd, const char *key)
{
 char path[PATH_MAX];
 char *line = ((void*)0);
 size_t line_n = 0;
 ssize_t n;
 FILE *fdi;

 snprintf(path, sizeof(path), "/proc/self/fdinfo/%d", fd);

 fdi = fopen(path, "r");
 if (!fdi)
  return ((void*)0);

 while ((n = getline(&line, &line_n, fdi)) > 0) {
  char *value;
  int len;

  if (!strstr(line, key))
   continue;

  fclose(fdi);

  value = strchr(line, '\t');
  if (!value || !value[1]) {
   free(line);
   return ((void*)0);
  }
  value++;

  len = strlen(value);
  memmove(line, value, len);
  line[len - 1] = '\0';

  return line;
 }

 free(line);
 fclose(fdi);
 return ((void*)0);
}
