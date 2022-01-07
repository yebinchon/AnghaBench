
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ret_handler; int handler; } ;
struct trace_uprobe {int filter; TYPE_1__ consumer; int devent; int tp; } ;


 int ENOMEM ;
 struct trace_uprobe* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int SIZEOF_TRACE_UPROBE (int) ;
 int dyn_event_init (int *,int *) ;
 int init_trace_uprobe_filter (int *) ;
 int kfree (struct trace_uprobe*) ;
 struct trace_uprobe* kzalloc (int ,int ) ;
 int trace_probe_init (int *,char const*,char const*) ;
 int trace_uprobe_ops ;
 int uprobe_dispatcher ;
 int uretprobe_dispatcher ;

__attribute__((used)) static struct trace_uprobe *
alloc_trace_uprobe(const char *group, const char *event, int nargs, bool is_ret)
{
 struct trace_uprobe *tu;
 int ret;

 tu = kzalloc(SIZEOF_TRACE_UPROBE(nargs), GFP_KERNEL);
 if (!tu)
  return ERR_PTR(-ENOMEM);

 ret = trace_probe_init(&tu->tp, event, group);
 if (ret < 0)
  goto error;

 dyn_event_init(&tu->devent, &trace_uprobe_ops);
 tu->consumer.handler = uprobe_dispatcher;
 if (is_ret)
  tu->consumer.ret_handler = uretprobe_dispatcher;
 init_trace_uprobe_filter(&tu->filter);
 return tu;

error:
 kfree(tu);

 return ERR_PTR(ret);
}
