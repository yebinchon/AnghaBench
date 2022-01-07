
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int nr_events; struct tep_event** events; } ;
struct tep_event {int dummy; } ;
struct event_list {int dummy; } ;
typedef int regex_t ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int REG_ICASE ;
 int REG_NOSUB ;
 int TEP_ERRNO__EVENT_NOT_FOUND ;
 int TEP_ERRNO__INVALID_EVENT_NAME ;
 int TEP_ERRNO__MEM_ALLOC_FAILED ;
 scalar_t__ add_event (struct event_list**,struct tep_event*) ;
 int asprintf (char**,char*,char*) ;
 scalar_t__ event_match (struct tep_event*,int *,int *) ;
 int free (char*) ;
 int regcomp (int *,char*,int) ;
 int regfree (int *) ;

__attribute__((used)) static enum tep_errno
find_event(struct tep_handle *tep, struct event_list **events,
    char *sys_name, char *event_name)
{
 struct tep_event *event;
 regex_t ereg;
 regex_t sreg;
 int match = 0;
 int fail = 0;
 char *reg;
 int ret;
 int i;

 if (!event_name) {

  event_name = sys_name;
  sys_name = ((void*)0);
 }

 ret = asprintf(&reg, "^%s$", event_name);
 if (ret < 0)
  return TEP_ERRNO__MEM_ALLOC_FAILED;

 ret = regcomp(&ereg, reg, REG_ICASE|REG_NOSUB);
 free(reg);

 if (ret)
  return TEP_ERRNO__INVALID_EVENT_NAME;

 if (sys_name) {
  ret = asprintf(&reg, "^%s$", sys_name);
  if (ret < 0) {
   regfree(&ereg);
   return TEP_ERRNO__MEM_ALLOC_FAILED;
  }

  ret = regcomp(&sreg, reg, REG_ICASE|REG_NOSUB);
  free(reg);
  if (ret) {
   regfree(&ereg);
   return TEP_ERRNO__INVALID_EVENT_NAME;
  }
 }

 for (i = 0; i < tep->nr_events; i++) {
  event = tep->events[i];
  if (event_match(event, sys_name ? &sreg : ((void*)0), &ereg)) {
   match = 1;
   if (add_event(events, event) < 0) {
    fail = 1;
    break;
   }
  }
 }

 regfree(&ereg);
 if (sys_name)
  regfree(&sreg);

 if (!match)
  return TEP_ERRNO__EVENT_NOT_FOUND;
 if (fail)
  return TEP_ERRNO__MEM_ALLOC_FAILED;

 return 0;
}
