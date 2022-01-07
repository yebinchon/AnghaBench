
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_handle {scalar_t__ test_filters; } ;
struct tep_event_filter {int error_buffer; struct tep_handle* tep; } ;
struct event_list {TYPE_1__* event; struct event_list* next; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;
struct TYPE_2__ {char* name; int id; } ;


 int TEP_ERRNO__FILTER_NOT_FOUND ;
 int TEP_ERRNO__MEM_ALLOC_FAILED ;
 int filter_event (struct tep_event_filter*,TYPE_1__*,char const*,int ) ;
 int filter_init_error_buf (struct tep_event_filter*) ;
 int find_event (struct tep_handle*,struct event_list**,int ,int ) ;
 int free (char*) ;
 int free_events (struct event_list*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int printf (char*,char*,char*) ;
 char* strchr (char const*,char) ;
 int strim (char*) ;
 int strlen (char const*) ;
 char* strtok_r (char*,char*,char**) ;
 char* tep_filter_make_string (struct tep_event_filter*,int ) ;

enum tep_errno tep_filter_add_filter_str(struct tep_event_filter *filter,
      const char *filter_str)
{
 struct tep_handle *tep = filter->tep;
 struct event_list *event;
 struct event_list *events = ((void*)0);
 const char *filter_start;
 const char *next_event;
 char *this_event;
 char *event_name = ((void*)0);
 char *sys_name = ((void*)0);
 char *sp;
 enum tep_errno rtn = 0;
 int len;
 int ret;

 filter_init_error_buf(filter);

 filter_start = strchr(filter_str, ':');
 if (filter_start)
  len = filter_start - filter_str;
 else
  len = strlen(filter_str);

 do {
  next_event = strchr(filter_str, ',');
  if (next_event &&
      (!filter_start || next_event < filter_start))
   len = next_event - filter_str;
  else if (filter_start)
   len = filter_start - filter_str;
  else
   len = strlen(filter_str);

  this_event = malloc(len + 1);
  if (this_event == ((void*)0)) {

   free_events(events);
   return TEP_ERRNO__MEM_ALLOC_FAILED;
  }
  memcpy(this_event, filter_str, len);
  this_event[len] = 0;

  if (next_event)
   next_event++;

  filter_str = next_event;

  sys_name = strtok_r(this_event, "/", &sp);
  event_name = strtok_r(((void*)0), "/", &sp);

  if (!sys_name) {

   free_events(events);
   free(this_event);
   return TEP_ERRNO__FILTER_NOT_FOUND;
  }


  ret = find_event(tep, &events, strim(sys_name), strim(event_name));
  if (ret < 0) {
   free_events(events);
   free(this_event);
   return ret;
  }
  free(this_event);
 } while (filter_str);


 if (filter_start)
  filter_start++;


 for (event = events; event; event = event->next) {
  ret = filter_event(filter, event->event, filter_start,
       filter->error_buffer);

  if (ret < 0)
   rtn = ret;

  if (ret >= 0 && tep->test_filters) {
   char *test;
   test = tep_filter_make_string(filter, event->event->id);
   if (test) {
    printf(" '%s: %s'\n", event->event->name, test);
    free(test);
   }
  }
 }

 free_events(events);

 return rtn;
}
