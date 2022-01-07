
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sk_rcvbuf; } ;
struct TYPE_3__ {int rcast; int mandatory; } ;
struct tipc_msg {int dummy; } ;
struct tipc_sock {TYPE_2__ sk; TYPE_1__ mc_method; struct tipc_group* group; int group_is_open; int portid; struct tipc_msg phdr; } ;
struct tipc_name_seq {int lower; int upper; int type; } ;
struct tipc_group_req {int scope; int type; int instance; } ;
struct tipc_group {int dummy; } ;
struct net {int dummy; } ;


 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int TIPC_NODE_SCOPE ;
 int TIPC_RESERVED_TYPES ;
 int msg_set_dest_droppable (struct tipc_msg*,int) ;
 int msg_set_lookup_scope (struct tipc_msg*,int ) ;
 int msg_set_nametype (struct tipc_msg*,int ) ;
 struct net* sock_net (TYPE_2__*) ;
 struct tipc_group* tipc_group_create (struct net*,int ,struct tipc_group_req*,int *) ;
 int tipc_group_delete (struct net*,struct tipc_group*) ;
 int tipc_group_join (struct net*,struct tipc_group*,int *) ;
 int tipc_nametbl_build_group (struct net*,struct tipc_group*,int ,int ) ;
 int tipc_sk_publish (struct tipc_sock*,int ,struct tipc_name_seq*) ;

__attribute__((used)) static int tipc_sk_join(struct tipc_sock *tsk, struct tipc_group_req *mreq)
{
 struct net *net = sock_net(&tsk->sk);
 struct tipc_group *grp = tsk->group;
 struct tipc_msg *hdr = &tsk->phdr;
 struct tipc_name_seq seq;
 int rc;

 if (mreq->type < TIPC_RESERVED_TYPES)
  return -EACCES;
 if (mreq->scope > TIPC_NODE_SCOPE)
  return -EINVAL;
 if (grp)
  return -EACCES;
 grp = tipc_group_create(net, tsk->portid, mreq, &tsk->group_is_open);
 if (!grp)
  return -ENOMEM;
 tsk->group = grp;
 msg_set_lookup_scope(hdr, mreq->scope);
 msg_set_nametype(hdr, mreq->type);
 msg_set_dest_droppable(hdr, 1);
 seq.type = mreq->type;
 seq.lower = mreq->instance;
 seq.upper = seq.lower;
 tipc_nametbl_build_group(net, grp, mreq->type, mreq->scope);
 rc = tipc_sk_publish(tsk, mreq->scope, &seq);
 if (rc) {
  tipc_group_delete(net, grp);
  tsk->group = ((void*)0);
  return rc;
 }

 tsk->mc_method.rcast = 1;
 tsk->mc_method.mandatory = 1;
 tipc_group_join(net, grp, &tsk->sk.sk_rcvbuf);
 return rc;
}
