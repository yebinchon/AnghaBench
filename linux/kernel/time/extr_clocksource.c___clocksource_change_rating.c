
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int rating; int list; } ;


 int clocksource_enqueue (struct clocksource*) ;
 int list_del (int *) ;

__attribute__((used)) static void __clocksource_change_rating(struct clocksource *cs, int rating)
{
 list_del(&cs->list);
 cs->rating = rating;
 clocksource_enqueue(cs);
}
