
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct bt_sock_list {int dummy; } ;



int bt_procfs_init(struct net *net, const char *name,
     struct bt_sock_list *sk_list,
     int (* seq_show)(struct seq_file *, void *))
{
 return 0;
}
