
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int uniquified_name; char* pmu_name; char* name; } ;


 scalar_t__ asprintf (char**,char*,char*,char*) ;
 int free (char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;

__attribute__((used)) static void uniquify_event_name(struct evsel *counter)
{
 char *new_name;
 char *config;

 if (counter->uniquified_name ||
     !counter->pmu_name || !strncmp(counter->name, counter->pmu_name,
        strlen(counter->pmu_name)))
  return;

 config = strchr(counter->name, '/');
 if (config) {
  if (asprintf(&new_name,
        "%s%s", counter->pmu_name, config) > 0) {
   free(counter->name);
   counter->name = new_name;
  }
 } else {
  if (asprintf(&new_name,
        "%s [%s]", counter->name, counter->pmu_name) > 0) {
   free(counter->name);
   counter->name = new_name;
  }
 }

 counter->uniquified_name = 1;
}
