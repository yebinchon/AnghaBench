
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef char DIR ;


 int TEST_ASSERT_VAL (char*,char*) ;
 int closedir (char*) ;
 char* get_events_file (int ) ;
 char* opendir (char*) ;
 int put_events_file (char*) ;
 struct dirent* readdir (char*) ;
 int strcmp (int ,char*) ;
 char* tracing_events__opendir () ;

__attribute__((used)) static int count_tracepoints(void)
{
 struct dirent *events_ent;
 DIR *events_dir;
 int cnt = 0;

 events_dir = tracing_events__opendir();

 TEST_ASSERT_VAL("Can't open events dir", events_dir);

 while ((events_ent = readdir(events_dir))) {
  char *sys_path;
  struct dirent *sys_ent;
  DIR *sys_dir;

  if (!strcmp(events_ent->d_name, ".")
      || !strcmp(events_ent->d_name, "..")
      || !strcmp(events_ent->d_name, "enable")
      || !strcmp(events_ent->d_name, "header_event")
      || !strcmp(events_ent->d_name, "header_page"))
   continue;

  sys_path = get_events_file(events_ent->d_name);
  TEST_ASSERT_VAL("Can't get sys path", sys_path);

  sys_dir = opendir(sys_path);
  TEST_ASSERT_VAL("Can't open sys dir", sys_dir);

  while ((sys_ent = readdir(sys_dir))) {
   if (!strcmp(sys_ent->d_name, ".")
       || !strcmp(sys_ent->d_name, "..")
       || !strcmp(sys_ent->d_name, "enable")
       || !strcmp(sys_ent->d_name, "filter"))
    continue;

   cnt++;
  }

  closedir(sys_dir);
  put_events_file(sys_path);
 }

 closedir(events_dir);
 return cnt;
}
