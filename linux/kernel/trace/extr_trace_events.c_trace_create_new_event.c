
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int list; int triggers; int tm_ref; int sm_ref; struct trace_array* tr; struct trace_event_call* event_call; } ;
struct trace_event_call {int dummy; } ;
struct trace_array {int events; } ;


 int GFP_TRACE ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int file_cachep ;
 struct trace_event_file* kmem_cache_alloc (int ,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static struct trace_event_file *
trace_create_new_event(struct trace_event_call *call,
         struct trace_array *tr)
{
 struct trace_event_file *file;

 file = kmem_cache_alloc(file_cachep, GFP_TRACE);
 if (!file)
  return ((void*)0);

 file->event_call = call;
 file->tr = tr;
 atomic_set(&file->sm_ref, 0);
 atomic_set(&file->tm_ref, 0);
 INIT_LIST_HEAD(&file->triggers);
 list_add(&file->list, &tr->events);

 return file;
}
