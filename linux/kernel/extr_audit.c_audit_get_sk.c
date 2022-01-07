
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net {int dummy; } ;
struct audit_net {struct sock* sk; } ;


 int audit_net_id ;
 struct audit_net* net_generic (struct net const*,int ) ;

__attribute__((used)) static struct sock *audit_get_sk(const struct net *net)
{
 struct audit_net *aunet;

 if (!net)
  return ((void*)0);

 aunet = net_generic(net, audit_net_id);
 return aunet->sk;
}
