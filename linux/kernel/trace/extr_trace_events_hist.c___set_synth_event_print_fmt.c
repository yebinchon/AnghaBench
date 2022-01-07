
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct synth_event {int n_fields; TYPE_1__** fields; } ;
struct TYPE_2__ {char* name; int type; } ;


 int LEN_OR_ZERO ;
 scalar_t__ snprintf (char*,int ,char*,...) ;
 char* synth_field_fmt (int ) ;

__attribute__((used)) static int __set_synth_event_print_fmt(struct synth_event *event,
           char *buf, int len)
{
 const char *fmt;
 int pos = 0;
 int i;




 pos += snprintf(buf + pos, (len ? len - pos : 0), "\"");
 for (i = 0; i < event->n_fields; i++) {
  fmt = synth_field_fmt(event->fields[i]->type);
  pos += snprintf(buf + pos, (len ? len - pos : 0), "%s=%s%s",
    event->fields[i]->name, fmt,
    i == event->n_fields - 1 ? "" : ", ");
 }
 pos += snprintf(buf + pos, (len ? len - pos : 0), "\"");

 for (i = 0; i < event->n_fields; i++) {
  pos += snprintf(buf + pos, (len ? len - pos : 0),
    ", REC->%s", event->fields[i]->name);
 }




 return pos;
}
