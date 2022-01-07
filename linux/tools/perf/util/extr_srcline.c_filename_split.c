
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 unsigned int strtoul (char*,int *,int ) ;

__attribute__((used)) static int filename_split(char *filename, unsigned int *line_nr)
{
 char *sep;

 sep = strchr(filename, '\n');
 if (sep)
  *sep = '\0';

 if (!strcmp(filename, "??:0"))
  return 0;

 sep = strchr(filename, ':');
 if (sep) {
  *sep++ = '\0';
  *line_nr = strtoul(sep, ((void*)0), 0);
  return 1;
 }

 return 0;
}
