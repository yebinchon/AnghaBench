
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct cgroup {TYPE_1__* root; } ;
struct TYPE_4__ {struct cgroup* cgroup; } ;
struct TYPE_3__ {int release_agent_path; } ;


 int release_agent_path_lock ;
 TYPE_2__* seq_css (struct seq_file*) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cgroup_release_agent_show(struct seq_file *seq, void *v)
{
 struct cgroup *cgrp = seq_css(seq)->cgroup;

 spin_lock(&release_agent_path_lock);
 seq_puts(seq, cgrp->root->release_agent_path);
 spin_unlock(&release_agent_path_lock);
 seq_putc(seq, '\n');
 return 0;
}
