
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int name; } ;


 TYPE_1__* THIS_MODULE ;
 int seq_printf (struct seq_file*,char*,int ,char*) ;

__attribute__((used)) static int livepatch_meminfo_proc_show(struct seq_file *m, void *v)
{
 seq_printf(m, "%s: %s\n", THIS_MODULE->name,
     "this has been live patched");
 return 0;
}
