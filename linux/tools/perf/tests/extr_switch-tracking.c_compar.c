
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_node {int event_time; } ;
typedef int s64 ;



__attribute__((used)) static int compar(const void *a, const void *b)
{
 const struct event_node *nodea = a;
 const struct event_node *nodeb = b;
 s64 cmp = nodea->event_time - nodeb->event_time;

 return cmp;
}
