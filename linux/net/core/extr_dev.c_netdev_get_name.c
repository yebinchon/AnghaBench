
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct net {int dummy; } ;


 int ENODEV ;
 int cond_resched () ;
 struct net_device* dev_get_by_index_rcu (struct net*,int) ;
 int devnet_rename_seq ;
 unsigned int raw_seqcount_begin (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int strcpy (char*,int ) ;

int netdev_get_name(struct net *net, char *name, int ifindex)
{
 struct net_device *dev;
 unsigned int seq;

retry:
 seq = raw_seqcount_begin(&devnet_rename_seq);
 rcu_read_lock();
 dev = dev_get_by_index_rcu(net, ifindex);
 if (!dev) {
  rcu_read_unlock();
  return -ENODEV;
 }

 strcpy(name, dev->name);
 rcu_read_unlock();
 if (read_seqcount_retry(&devnet_rename_seq, seq)) {
  cond_resched();
  goto retry;
 }

 return 0;
}
