
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECANCELED ;
 int EINVAL ;
 int dyn_event_release (int,char**,int *) ;
 int trace_uprobe_create (int,char const**) ;
 int trace_uprobe_ops ;

__attribute__((used)) static int create_or_delete_trace_uprobe(int argc, char **argv)
{
 int ret;

 if (argv[0][0] == '-')
  return dyn_event_release(argc, argv, &trace_uprobe_ops);

 ret = trace_uprobe_create(argc, (const char **)argv);
 return ret == -ECANCELED ? -EINVAL : ret;
}
