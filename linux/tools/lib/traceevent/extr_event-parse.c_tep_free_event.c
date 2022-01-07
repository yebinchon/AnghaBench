
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int args; struct tep_event* format; } ;
struct tep_event {TYPE_1__ print_fmt; int format; struct tep_event* system; struct tep_event* name; } ;


 int free (struct tep_event*) ;
 int free_args (int ) ;
 int free_formats (int *) ;

void tep_free_event(struct tep_event *event)
{
 free(event->name);
 free(event->system);

 free_formats(&event->format);

 free(event->print_fmt.format);
 free_args(event->print_fmt.args);

 free(event);
}
