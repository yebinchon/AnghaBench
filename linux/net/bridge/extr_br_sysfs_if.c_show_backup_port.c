
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {TYPE_1__* dev; int backup_port; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 struct net_bridge_port* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_backup_port(struct net_bridge_port *p, char *buf)
{
 struct net_bridge_port *backup_p;
 int ret = 0;

 rcu_read_lock();
 backup_p = rcu_dereference(p->backup_port);
 if (backup_p)
  ret = sprintf(buf, "%s\n", backup_p->dev->name);
 rcu_read_unlock();

 return ret;
}
