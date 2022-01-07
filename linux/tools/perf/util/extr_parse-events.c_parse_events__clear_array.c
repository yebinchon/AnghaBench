
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_array {int ranges; } ;


 int zfree (int *) ;

void parse_events__clear_array(struct parse_events_array *a)
{
 zfree(&a->ranges);
}
