
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {void* private; } ;
typedef scalar_t__ loff_t ;


 int GOSSIP_DEBUGFS_DEBUG ;
 int gossip_debug (int ,char*) ;
 int mutex_lock (int *) ;
 int orangefs_help_file_lock ;

__attribute__((used)) static void *help_start(struct seq_file *m, loff_t *pos)
{
 void *payload = ((void*)0);

 gossip_debug(GOSSIP_DEBUGFS_DEBUG, "help_start: start\n");

 mutex_lock(&orangefs_help_file_lock);

 if (*pos == 0)
  payload = m->private;

 return payload;
}
