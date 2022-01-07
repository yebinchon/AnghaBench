
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int __ftrace_set_clr_event_nolock (struct trace_array*,char const*,char const*,char const*,int) ;
 int event_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int __ftrace_set_clr_event(struct trace_array *tr, const char *match,
      const char *sub, const char *event, int set)
{
 int ret;

 mutex_lock(&event_mutex);
 ret = __ftrace_set_clr_event_nolock(tr, match, sub, event, set);
 mutex_unlock(&event_mutex);

 return ret;
}
