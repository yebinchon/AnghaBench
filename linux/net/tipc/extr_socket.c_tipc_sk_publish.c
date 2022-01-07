
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct tipc_sock {int published; scalar_t__ pub_count; int publications; scalar_t__ portid; struct sock sk; } ;
struct tipc_name_seq {int upper; int lower; int type; } ;
struct publication {int binding_sock; } ;
struct net {int dummy; } ;


 int EADDRINUSE ;
 int EINVAL ;
 int TIPC_CLUSTER_SCOPE ;
 int TIPC_NODE_SCOPE ;
 int list_add (int *,int *) ;
 struct net* sock_net (struct sock*) ;
 struct publication* tipc_nametbl_publish (struct net*,int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ tipc_sk_connected (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tipc_sk_publish(struct tipc_sock *tsk, uint scope,
      struct tipc_name_seq const *seq)
{
 struct sock *sk = &tsk->sk;
 struct net *net = sock_net(sk);
 struct publication *publ;
 u32 key;

 if (scope != TIPC_NODE_SCOPE)
  scope = TIPC_CLUSTER_SCOPE;

 if (tipc_sk_connected(sk))
  return -EINVAL;
 key = tsk->portid + tsk->pub_count + 1;
 if (key == tsk->portid)
  return -EADDRINUSE;

 publ = tipc_nametbl_publish(net, seq->type, seq->lower, seq->upper,
        scope, tsk->portid, key);
 if (unlikely(!publ))
  return -EINVAL;

 list_add(&publ->binding_sock, &tsk->publications);
 tsk->pub_count++;
 tsk->published = 1;
 return 0;
}
