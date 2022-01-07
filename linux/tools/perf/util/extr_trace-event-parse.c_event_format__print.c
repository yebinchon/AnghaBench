
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event {int dummy; } ;


 void event_format__fprintf (struct tep_event*,int,void*,int,int ) ;
 int stdout ;

void event_format__print(struct tep_event *event,
    int cpu, void *data, int size)
{
 return event_format__fprintf(event, cpu, data, size, stdout);
}
