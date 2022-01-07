
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event {int dummy; } ;


 int ENOMEM ;
 struct tep_event* ERR_PTR (int ) ;
 int tevent_initialized ;
 struct tep_event* tp_format (char const*,char const*) ;
 scalar_t__ trace_event__init2 () ;

struct tep_event*
trace_event__tp_format(const char *sys, const char *name)
{
 if (!tevent_initialized && trace_event__init2())
  return ERR_PTR(-ENOMEM);

 return tp_format(sys, name);
}
