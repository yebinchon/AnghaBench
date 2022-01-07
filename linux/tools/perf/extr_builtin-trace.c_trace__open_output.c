
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace {int * output; } ;
struct stat {scalar_t__ st_size; } ;
typedef int oldname ;


 int PATH_MAX ;
 int errno ;
 int * fopen (char const*,char*) ;
 int rename (char const*,char*) ;
 int scnprintf (char*,int,char*,char const*) ;
 int stat (char const*,struct stat*) ;
 int unlink (char*) ;

__attribute__((used)) static int trace__open_output(struct trace *trace, const char *filename)
{
 struct stat st;

 if (!stat(filename, &st) && st.st_size) {
  char oldname[PATH_MAX];

  scnprintf(oldname, sizeof(oldname), "%s.old", filename);
  unlink(oldname);
  rename(filename, oldname);
 }

 trace->output = fopen(filename, "w");

 return trace->output == ((void*)0) ? -errno : 0;
}
