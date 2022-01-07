
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char const* nodename; char const* release; } ;
typedef int FILE ;
typedef int DIR ;


 int closedir (int *) ;
 int dprintf (char*,char*) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int free (char*) ;
 char* malloc (int) ;
 scalar_t__ mkdir (char const*,int) ;
 int * opendir (char const*) ;
 int perror (char*) ;
 char* realloc (char*,int) ;
 int snprintf (char*,int,char*,char const*,char const*,...) ;
 int * stderr ;
 int stdout ;
 int strlen (char const*) ;
 int time (int *) ;
 scalar_t__ uname (struct utsname*) ;

FILE *prepare_output(const char *dirname)
{
 FILE *output = ((void*)0);
 int len;
 char *filename, *filename_tmp;
 struct utsname sysdata;
 DIR *dir;

 dir = opendir(dirname);
 if (dir == ((void*)0)) {
  if (mkdir(dirname, 0755)) {
   perror("mkdir");
   fprintf(stderr, "error: Cannot create dir %s\n",
    dirname);
   return ((void*)0);
  }
 }

 len = strlen(dirname) + 30;
 filename = malloc(sizeof(char) * len);
 if (!filename) {
  perror("malloc");
  goto out_dir;
 }

 if (uname(&sysdata) == 0) {
  len += strlen(sysdata.nodename) + strlen(sysdata.release);
  filename_tmp = realloc(filename, sizeof(*filename) * len);

  if (filename_tmp == ((void*)0)) {
   free(filename);
   perror("realloc");
   goto out_dir;
  }

  filename = filename_tmp;
  snprintf(filename, len - 1, "%s/benchmark_%s_%s_%li.log",
   dirname, sysdata.nodename, sysdata.release, time(((void*)0)));
 } else {
  snprintf(filename, len - 1, "%s/benchmark_%li.log",
   dirname, time(((void*)0)));
 }

 dprintf("logfilename: %s\n", filename);

 output = fopen(filename, "w+");
 if (output == ((void*)0)) {
  perror("fopen");
  fprintf(stderr, "error: unable to open logfile\n");
  goto out;
 }

 fprintf(stdout, "Logfile: %s\n", filename);

 fprintf(output, "#round load sleep performance powersave percentage\n");
out:
 free(filename);
out_dir:
 closedir(dir);
 return output;
}
