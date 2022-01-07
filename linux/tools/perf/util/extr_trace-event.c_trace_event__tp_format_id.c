
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_event {int dummy; } ;
struct TYPE_2__ {int pevent; } ;


 int ENOMEM ;
 struct tep_event* ERR_PTR (int ) ;
 struct tep_event* tep_find_event (int ,int) ;
 TYPE_1__ tevent ;
 int tevent_initialized ;
 scalar_t__ trace_event__init2 () ;

struct tep_event *trace_event__tp_format_id(int id)
{
 if (!tevent_initialized && trace_event__init2())
  return ERR_PTR(-ENOMEM);

 return tep_find_event(tevent.pevent, id);
}
