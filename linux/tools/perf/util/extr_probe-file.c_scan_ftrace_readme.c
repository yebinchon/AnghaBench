
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum ftrace_readme { ____Placeholder_ftrace_readme } ftrace_readme ;
struct TYPE_2__ {int avail; int pattern; } ;
typedef int FILE ;


 int FTRACE_README_END ;
 int close (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int free (char*) ;
 TYPE_1__* ftrace_readme_table ;
 scalar_t__ getline (char**,size_t*,int *) ;
 int open_trace_file (char*,int) ;
 int strglobmatch (char*,int ) ;

__attribute__((used)) static bool scan_ftrace_readme(enum ftrace_readme type)
{
 int fd;
 FILE *fp;
 char *buf = ((void*)0);
 size_t len = 0;
 bool ret = 0;
 static bool scanned = 0;

 if (scanned)
  goto result;

 fd = open_trace_file("README", 0);
 if (fd < 0)
  return ret;

 fp = fdopen(fd, "r");
 if (!fp) {
  close(fd);
  return ret;
 }

 while (getline(&buf, &len, fp) > 0)
  for (enum ftrace_readme i = 0; i < FTRACE_README_END; i++)
   if (!ftrace_readme_table[i].avail)
    ftrace_readme_table[i].avail =
     strglobmatch(buf, ftrace_readme_table[i].pattern);
 scanned = 1;

 fclose(fp);
 free(buf);

result:
 if (type >= FTRACE_README_END)
  return 0;

 return ftrace_readme_table[type].avail;
}
