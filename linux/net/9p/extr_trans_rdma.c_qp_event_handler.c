
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_event {int event; } ;


 int P9_DEBUG_ERROR ;
 int p9_debug (int ,char*,int ,void*) ;

__attribute__((used)) static void qp_event_handler(struct ib_event *event, void *context)
{
 p9_debug(P9_DEBUG_ERROR, "QP event %d context %p\n",
   event->event, context);
}
