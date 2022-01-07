
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;
struct tep_event {int dummy; } ;


 struct tep_event* tep_get_event (struct tep_handle*,int ) ;

struct tep_event *tep_get_first_event(struct tep_handle *tep)
{
 return tep_get_event(tep, 0);
}
