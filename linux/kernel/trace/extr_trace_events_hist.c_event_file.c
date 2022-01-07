
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int dummy; } ;
struct trace_array {int dummy; } ;


 int EINVAL ;
 struct trace_event_file* ERR_PTR (int ) ;
 struct trace_event_file* __find_event_file (struct trace_array*,char*,char*) ;

__attribute__((used)) static struct trace_event_file *event_file(struct trace_array *tr,
        char *system, char *event_name)
{
 struct trace_event_file *file;

 file = __find_event_file(tr, system, event_name);
 if (!file)
  return ERR_PTR(-EINVAL);

 return file;
}
