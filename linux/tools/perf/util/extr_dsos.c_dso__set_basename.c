
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int long_name; } ;


 scalar_t__ asprintf (char**,char*,int) ;
 int basename (char*) ;
 int dso__set_short_name (struct dso*,char*,int) ;
 int free (char*) ;
 int sscanf (int ,char*,int*) ;
 char* strdup (int ) ;

__attribute__((used)) static void dso__set_basename(struct dso *dso)
{
 char *base, *lname;
 int tid;

 if (sscanf(dso->long_name, "/tmp/perf-%d.map", &tid) == 1) {
  if (asprintf(&base, "[JIT] tid %d", tid) < 0)
   return;
 } else {




  lname = strdup(dso->long_name);
  if (!lname)
   return;






  base = strdup(basename(lname));

  free(lname);

  if (!base)
   return;
 }
 dso__set_short_name(dso, base, 1);
}
