
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_handle {int dummy; } ;
struct tep_event {int dummy; } ;
struct TYPE_2__ {struct tep_handle* pevent; } ;


 struct tep_event* ERR_PTR (int) ;
 int PATH_MAX ;
 int errno ;
 int filename__read_str (char*,char**,size_t*) ;
 int free (char*) ;
 char* get_events_file (char const*) ;
 int put_events_file (char*) ;
 int scnprintf (char*,int,char*,char*,char const*) ;
 int tep_parse_format (struct tep_handle*,struct tep_event**,char*,size_t,char const*) ;
 TYPE_1__ tevent ;

__attribute__((used)) static struct tep_event*
tp_format(const char *sys, const char *name)
{
 char *tp_dir = get_events_file(sys);
 struct tep_handle *pevent = tevent.pevent;
 struct tep_event *event = ((void*)0);
 char path[PATH_MAX];
 size_t size;
 char *data;
 int err;

 if (!tp_dir)
  return ERR_PTR(-errno);

 scnprintf(path, PATH_MAX, "%s/%s/format", tp_dir, name);
 put_events_file(tp_dir);

 err = filename__read_str(path, &data, &size);
 if (err)
  return ERR_PTR(err);

 tep_parse_format(pevent, &event, data, size, sys);

 free(data);
 return event;
}
