
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct kernfs_root {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int CGRP_ROOT_MEMORY_LOCAL_EVENTS ;
 int CGRP_ROOT_NS_DELEGATE ;
 TYPE_1__ cgrp_dfl_root ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int cgroup_show_options(struct seq_file *seq, struct kernfs_root *kf_root)
{
 if (cgrp_dfl_root.flags & CGRP_ROOT_NS_DELEGATE)
  seq_puts(seq, ",nsdelegate");
 if (cgrp_dfl_root.flags & CGRP_ROOT_MEMORY_LOCAL_EVENTS)
  seq_puts(seq, ",memory_localevents");
 return 0;
}
