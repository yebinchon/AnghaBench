
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int GOSSIP_DEBUGFS_DEBUG ;
 int gossip_debug (int ,char*) ;
 int mutex_unlock (int *) ;
 int orangefs_help_file_lock ;

__attribute__((used)) static void help_stop(struct seq_file *m, void *p)
{
 gossip_debug(GOSSIP_DEBUGFS_DEBUG, "help_stop: start\n");
 mutex_unlock(&orangefs_help_file_lock);
}
