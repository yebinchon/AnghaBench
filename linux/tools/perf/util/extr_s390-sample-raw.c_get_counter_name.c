
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_events_map {struct pmu_event* table; } ;
struct pmu_event {char const* name; int * event; scalar_t__ desc; } ;


 int get_counterset_start (int) ;
 int sscanf (int *,char*,int*) ;

__attribute__((used)) static const char *get_counter_name(int set, int nr, struct pmu_events_map *map)
{
 int rc, event_nr, wanted = get_counterset_start(set) + nr;

 if (map) {
  struct pmu_event *evp = map->table;

  for (; evp->name || evp->event || evp->desc; ++evp) {
   if (evp->name == ((void*)0) || evp->event == ((void*)0))
    continue;
   rc = sscanf(evp->event, "event=%x", &event_nr);
   if (rc == 1 && event_nr == wanted)
    return evp->name;
  }
 }
 return ((void*)0);
}
