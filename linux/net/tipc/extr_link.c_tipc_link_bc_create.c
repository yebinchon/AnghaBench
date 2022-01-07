
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tipc_link {int state; struct tipc_link* bc_rcvlink; scalar_t__ ackers; int name; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;


 int LINK_ESTABLISHED ;
 int LINK_RESET ;
 int MAX_BEARERS ;
 int TIPC_BCAST_RCAST ;
 int TIPC_DUMP_ALL ;
 scalar_t__ link_is_bc_rcvlink (struct tipc_link*) ;
 scalar_t__ link_is_bc_sndlink (struct tipc_link*) ;
 int strcpy (int ,int ) ;
 int tipc_bcast_disable_rcast (struct net*) ;
 int tipc_bclink_name ;
 int tipc_link_create (struct net*,char*,int ,int ,char,int,int ,int,int ,int ,int ,int *,int,struct tipc_link*,int *,struct sk_buff_head*,struct sk_buff_head*,struct tipc_link**) ;
 int tipc_link_reset (struct tipc_link*) ;
 int trace_tipc_link_reset (struct tipc_link*,int ,char*) ;

bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
    int mtu, int window, u16 peer_caps,
    struct sk_buff_head *inputq,
    struct sk_buff_head *namedq,
    struct tipc_link *bc_sndlink,
    struct tipc_link **link)
{
 struct tipc_link *l;

 if (!tipc_link_create(net, "", MAX_BEARERS, 0, 'Z', mtu, 0, window,
         0, ownnode, peer, ((void*)0), peer_caps, bc_sndlink,
         ((void*)0), inputq, namedq, link))
  return 0;

 l = *link;
 strcpy(l->name, tipc_bclink_name);
 trace_tipc_link_reset(l, TIPC_DUMP_ALL, "bclink created!");
 tipc_link_reset(l);
 l->state = LINK_RESET;
 l->ackers = 0;
 l->bc_rcvlink = l;


 if (link_is_bc_sndlink(l))
  l->state = LINK_ESTABLISHED;


 if (link_is_bc_rcvlink(l) && !(peer_caps & TIPC_BCAST_RCAST))
  tipc_bcast_disable_rcast(net);

 return 1;
}
