
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int,int ) ;
 int* tgid_map ;
 int trace_find_tgid (int) ;

__attribute__((used)) static int saved_tgids_show(struct seq_file *m, void *v)
{
 int pid = (int *)v - tgid_map;

 seq_printf(m, "%d %d\n", pid, trace_find_tgid(pid));
 return 0;
}
