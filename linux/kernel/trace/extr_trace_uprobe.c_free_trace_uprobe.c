
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe {struct trace_uprobe* filename; int tp; int path; } ;


 int kfree (struct trace_uprobe*) ;
 int path_put (int *) ;
 int trace_probe_cleanup (int *) ;

__attribute__((used)) static void free_trace_uprobe(struct trace_uprobe *tu)
{
 if (!tu)
  return;

 path_put(&tu->path);
 trace_probe_cleanup(&tu->tp);
 kfree(tu->filename);
 kfree(tu);
}
