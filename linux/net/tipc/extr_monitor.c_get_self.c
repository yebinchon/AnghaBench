
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_peer {int dummy; } ;
struct tipc_monitor {struct tipc_peer* self; } ;
struct net {int dummy; } ;


 struct tipc_monitor* tipc_monitor (struct net*,int) ;

__attribute__((used)) static struct tipc_peer *get_self(struct net *net, int bearer_id)
{
 struct tipc_monitor *mon = tipc_monitor(net, bearer_id);

 return mon->self;
}
