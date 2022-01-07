
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe {int tp; } ;
struct dyn_event {int dummy; } ;


 scalar_t__ strcmp (int ,char const*) ;
 struct trace_uprobe* to_trace_uprobe (struct dyn_event*) ;
 int trace_probe_group_name (int *) ;
 int trace_probe_name (int *) ;
 scalar_t__ trace_uprobe_match_command_head (struct trace_uprobe*,int,char const**) ;

__attribute__((used)) static bool trace_uprobe_match(const char *system, const char *event,
   int argc, const char **argv, struct dyn_event *ev)
{
 struct trace_uprobe *tu = to_trace_uprobe(ev);

 return strcmp(trace_probe_name(&tu->tp), event) == 0 &&
    (!system || strcmp(trace_probe_group_name(&tu->tp), system) == 0) &&
    trace_uprobe_match_command_head(tu, argc, argv);
}
