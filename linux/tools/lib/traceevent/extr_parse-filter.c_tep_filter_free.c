
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event_filter {int tep; } ;


 int free (struct tep_event_filter*) ;
 int tep_filter_reset (struct tep_event_filter*) ;
 int tep_unref (int ) ;

void tep_filter_free(struct tep_event_filter *filter)
{
 tep_unref(filter->tep);

 tep_filter_reset(filter);

 free(filter);
}
