
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int kfree (void*) ;

__attribute__((used)) static void pstore_ftrace_seq_stop(struct seq_file *s, void *v)
{
 kfree(v);
}
