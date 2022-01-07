
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int GOSSIP_DEBUGFS_DEBUG ;
 int gossip_debug (int ,char*) ;

__attribute__((used)) static void *help_next(struct seq_file *m, void *v, loff_t *pos)
{
 gossip_debug(GOSSIP_DEBUGFS_DEBUG, "help_next: start\n");

 return ((void*)0);
}
