
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_error {void* help; void* str; } ;
typedef int help ;


 int BUFSIZ ;


 int abs (int) ;
 void* strdup (char*) ;
 int tracing_path__strerror_open_tp (int,char*,int,char const*,char const*) ;

__attribute__((used)) static void tracepoint_error(struct parse_events_error *e, int err,
        const char *sys, const char *name)
{
 char help[BUFSIZ];

 if (!e)
  return;





 err = abs(err);

 switch (err) {
 case 129:
  e->str = strdup("can't access trace events");
  break;
 case 128:
  e->str = strdup("unknown tracepoint");
  break;
 default:
  e->str = strdup("failed to add tracepoint");
  break;
 }

 tracing_path__strerror_open_tp(err, help, sizeof(help), sys, name);
 e->help = strdup(help);
}
