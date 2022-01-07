
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_error {int dummy; } ;
struct list_head {int dummy; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int add_tracepoint_event (struct list_head*,int*,int ,char const*,struct parse_events_error*,struct list_head*) ;
 int closedir (int *) ;
 int errno ;
 struct dirent* readdir (int *) ;
 int strcmp (int ,char*) ;
 int strglobmatch (int ,char const*) ;
 int tracepoint_error (struct parse_events_error*,int ,char const*,char const*) ;
 int * tracing_events__opendir () ;

__attribute__((used)) static int add_tracepoint_multi_sys(struct list_head *list, int *idx,
        const char *sys_name, const char *evt_name,
        struct parse_events_error *err,
        struct list_head *head_config)
{
 struct dirent *events_ent;
 DIR *events_dir;
 int ret = 0;

 events_dir = tracing_events__opendir();
 if (!events_dir) {
  tracepoint_error(err, errno, sys_name, evt_name);
  return -1;
 }

 while (!ret && (events_ent = readdir(events_dir))) {
  if (!strcmp(events_ent->d_name, ".")
      || !strcmp(events_ent->d_name, "..")
      || !strcmp(events_ent->d_name, "enable")
      || !strcmp(events_ent->d_name, "header_event")
      || !strcmp(events_ent->d_name, "header_page"))
   continue;

  if (!strglobmatch(events_ent->d_name, sys_name))
   continue;

  ret = add_tracepoint_event(list, idx, events_ent->d_name,
        evt_name, err, head_config);
 }

 closedir(events_dir);
 return ret;
}
