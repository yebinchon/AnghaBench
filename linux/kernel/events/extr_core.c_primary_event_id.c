
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_event {TYPE_1__* parent; int id; } ;
struct TYPE_2__ {int id; } ;



__attribute__((used)) static u64 primary_event_id(struct perf_event *event)
{
 u64 id = event->id;

 if (event->parent)
  id = event->parent->id;

 return id;
}
