
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int GOSSIP_DEBUGFS_DEBUG ;
 int gossip_debug (int ,char*) ;
 int seq_puts (struct seq_file*,void*) ;

__attribute__((used)) static int help_show(struct seq_file *m, void *v)
{
 gossip_debug(GOSSIP_DEBUGFS_DEBUG, "help_show: start\n");

 seq_puts(m, v);

 return 0;
}
