
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_desc {void* args; void* half_liner; } ;
typedef int line ;
typedef int FILE ;


 int BUFSIZ ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 char* skip_spaces (char*) ;
 void* strdup (char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int read_script_info(struct script_desc *desc, const char *filename)
{
 char line[BUFSIZ], *p;
 FILE *fp;

 fp = fopen(filename, "r");
 if (!fp)
  return -1;

 while (fgets(line, sizeof(line), fp)) {
  p = skip_spaces(line);
  if (strlen(p) == 0)
   continue;
  if (*p != '#')
   continue;
  p++;
  if (strlen(p) && *p == '!')
   continue;

  p = skip_spaces(p);
  if (strlen(p) && p[strlen(p) - 1] == '\n')
   p[strlen(p) - 1] = '\0';

  if (!strncmp(p, "description:", strlen("description:"))) {
   p += strlen("description:");
   desc->half_liner = strdup(skip_spaces(p));
   continue;
  }

  if (!strncmp(p, "args:", strlen("args:"))) {
   p += strlen("args:");
   desc->args = strdup(skip_spaces(p));
   continue;
  }
 }

 fclose(fp);

 return 0;
}
