
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int flags; } ;
struct seq_file {struct user_namespace* private; } ;


 unsigned long READ_ONCE (int ) ;
 unsigned long USERNS_SETGROUPS_ALLOWED ;
 int seq_printf (struct seq_file*,char*,char*) ;

int proc_setgroups_show(struct seq_file *seq, void *v)
{
 struct user_namespace *ns = seq->private;
 unsigned long userns_flags = READ_ONCE(ns->flags);

 seq_printf(seq, "%s\n",
     (userns_flags & USERNS_SETGROUPS_ALLOWED) ?
     "allow" : "deny");
 return 0;
}
