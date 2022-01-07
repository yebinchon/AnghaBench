
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_error {int dummy; } ;
struct list_head {int dummy; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int ENOENT ;
 int add_tracepoint (struct list_head*,int*,char const*,int ,struct parse_events_error*,struct list_head*) ;
 int closedir (int *) ;
 int errno ;
 char* get_events_file (char const*) ;
 int * opendir (char*) ;
 int put_events_file (char*) ;
 struct dirent* readdir (int *) ;
 int strcmp (int ,char*) ;
 int strglobmatch (int ,char const*) ;
 int tracepoint_error (struct parse_events_error*,int ,char const*,char const*) ;

__attribute__((used)) static int add_tracepoint_multi_event(struct list_head *list, int *idx,
          const char *sys_name, const char *evt_name,
          struct parse_events_error *err,
          struct list_head *head_config)
{
 char *evt_path;
 struct dirent *evt_ent;
 DIR *evt_dir;
 int ret = 0, found = 0;

 evt_path = get_events_file(sys_name);
 if (!evt_path) {
  tracepoint_error(err, errno, sys_name, evt_name);
  return -1;
 }
 evt_dir = opendir(evt_path);
 if (!evt_dir) {
  put_events_file(evt_path);
  tracepoint_error(err, errno, sys_name, evt_name);
  return -1;
 }

 while (!ret && (evt_ent = readdir(evt_dir))) {
  if (!strcmp(evt_ent->d_name, ".")
      || !strcmp(evt_ent->d_name, "..")
      || !strcmp(evt_ent->d_name, "enable")
      || !strcmp(evt_ent->d_name, "filter"))
   continue;

  if (!strglobmatch(evt_ent->d_name, evt_name))
   continue;

  found++;

  ret = add_tracepoint(list, idx, sys_name, evt_ent->d_name,
         err, head_config);
 }

 if (!found) {
  tracepoint_error(err, ENOENT, sys_name, evt_name);
  ret = -1;
 }

 put_events_file(evt_path);
 closedir(evt_dir);
 return ret;
}
