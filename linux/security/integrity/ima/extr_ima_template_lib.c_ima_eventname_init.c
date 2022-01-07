
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_field_data {int dummy; } ;
struct ima_event_data {int dummy; } ;


 int ima_eventname_init_common (struct ima_event_data*,struct ima_field_data*,int) ;

int ima_eventname_init(struct ima_event_data *event_data,
         struct ima_field_data *field_data)
{
 return ima_eventname_init_common(event_data, field_data, 1);
}
