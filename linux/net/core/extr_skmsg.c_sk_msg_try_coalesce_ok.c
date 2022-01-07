
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int end; int start; } ;
struct sk_msg {TYPE_1__ sg; } ;



__attribute__((used)) static bool sk_msg_try_coalesce_ok(struct sk_msg *msg, int elem_first_coalesce)
{
 if (msg->sg.end > msg->sg.start &&
     elem_first_coalesce < msg->sg.end)
  return 1;

 if (msg->sg.end < msg->sg.start &&
     (elem_first_coalesce > msg->sg.start ||
      elem_first_coalesce < msg->sg.end))
  return 1;

 return 0;
}
