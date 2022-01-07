
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_struct {int list; } ;


 int ADD_EVENT_FIELD ;
 int ENOMEM ;
 int FOR_ALL_EVENT_STRUCT_FIELDS (int ) ;
 int FREE_EVENT_FIELD ;
 int arch_std_events ;
 int free (struct event_struct*) ;
 int list_add_tail (int *,int *) ;
 struct event_struct* malloc (int) ;
 int memset (struct event_struct*,int ,int) ;

__attribute__((used)) static int save_arch_std_events(void *data, char *name, char *event,
    char *desc, char *long_desc, char *pmu,
    char *unit, char *perpkg, char *metric_expr,
    char *metric_name, char *metric_group)
{
 struct event_struct *es;

 es = malloc(sizeof(*es));
 if (!es)
  return -ENOMEM;
 memset(es, 0, sizeof(*es));
 FOR_ALL_EVENT_STRUCT_FIELDS(ADD_EVENT_FIELD);
 list_add_tail(&es->list, &arch_std_events);
 return 0;
out_free:
 FOR_ALL_EVENT_STRUCT_FIELDS(FREE_EVENT_FIELD);
 free(es);
 return -ENOMEM;
}
