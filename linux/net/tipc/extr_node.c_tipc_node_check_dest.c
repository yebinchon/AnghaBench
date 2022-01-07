
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int namedq; int link; } ;
struct tipc_node {scalar_t__ signature; int link_cnt; scalar_t__ state; int timer; int keepalive_intv; TYPE_1__ bc_entry; int net; int capabilities; struct tipc_link_entry* links; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_link_entry {int maddr; struct tipc_link* link; int inputq; } ;
struct tipc_link {int dummy; } ;
struct tipc_bearer {size_t identity; int window; int priority; int mtu; int net_plane; int tolerance; int name; } ;
struct net {int dummy; } ;


 int LINK_FAILOVER_BEGIN_EVT ;
 int LINK_RESET_EVT ;
 scalar_t__ NODE_FAILINGOVER ;
 int TIPC_DUMP_ALL ;
 int get_random_bytes (int *,int) ;
 unsigned long jiffies ;
 int memcmp (int *,struct tipc_media_addr*,int) ;
 int memcpy (int *,struct tipc_media_addr*,int) ;
 int mod_timer (int *,unsigned long) ;
 unsigned long msecs_to_jiffies (int ) ;
 char* strchr (int ,char) ;
 int tipc_bc_sndlink (int ) ;
 int tipc_link_create (struct net*,char*,size_t,int ,int ,int ,int ,int ,int ,int ,scalar_t__,int *,int ,int ,int ,int *,int *,struct tipc_link**) ;
 int tipc_link_fsm_evt (struct tipc_link*,int ) ;
 int tipc_link_is_reset (struct tipc_link*) ;
 scalar_t__ tipc_link_is_up (struct tipc_link*) ;
 int tipc_link_reset (struct tipc_link*) ;
 int tipc_node_calculate_timer (struct tipc_node*,struct tipc_link*) ;
 struct tipc_node* tipc_node_create (struct net*,scalar_t__,int *,int ) ;
 int tipc_node_get (struct tipc_node*) ;
 int tipc_node_link_down (struct tipc_node*,size_t,int) ;
 int tipc_node_put (struct tipc_node*) ;
 int tipc_node_write_lock (struct tipc_node*) ;
 int tipc_node_write_unlock (struct tipc_node*) ;
 int tipc_own_addr (struct net*) ;
 int trace_tipc_link_reset (struct tipc_link*,int ,char*) ;

void tipc_node_check_dest(struct net *net, u32 addr,
     u8 *peer_id, struct tipc_bearer *b,
     u16 capabilities, u32 signature,
     struct tipc_media_addr *maddr,
     bool *respond, bool *dupl_addr)
{
 struct tipc_node *n;
 struct tipc_link *l;
 struct tipc_link_entry *le;
 bool addr_match = 0;
 bool sign_match = 0;
 bool link_up = 0;
 bool accept_addr = 0;
 bool reset = 1;
 char *if_name;
 unsigned long intv;
 u16 session;

 *dupl_addr = 0;
 *respond = 0;

 n = tipc_node_create(net, addr, peer_id, capabilities);
 if (!n)
  return;

 tipc_node_write_lock(n);

 le = &n->links[b->identity];


 l = le->link;
 link_up = l && tipc_link_is_up(l);
 addr_match = l && !memcmp(&le->maddr, maddr, sizeof(*maddr));
 sign_match = (signature == n->signature);



 if (sign_match && addr_match && link_up) {

  reset = 0;
 } else if (sign_match && addr_match && !link_up) {

  *respond = 1;
 } else if (sign_match && !addr_match && link_up) {
  *dupl_addr = 1;
 } else if (sign_match && !addr_match && !link_up) {





  accept_addr = 1;
  *respond = 1;
 } else if (!sign_match && addr_match && link_up) {
  n->signature = signature;
 } else if (!sign_match && addr_match && !link_up) {



  n->signature = signature;
  *respond = 1;
 } else if (!sign_match && !addr_match && link_up) {



  *dupl_addr = 1;
 } else if (!sign_match && !addr_match && !link_up) {



  n->signature = signature;
  accept_addr = 1;
  *respond = 1;
 }

 if (!accept_addr)
  goto exit;


 if (!l) {
  if (n->link_cnt == 2)
   goto exit;

  if_name = strchr(b->name, ':') + 1;
  get_random_bytes(&session, sizeof(u16));
  if (!tipc_link_create(net, if_name, b->identity, b->tolerance,
          b->net_plane, b->mtu, b->priority,
          b->window, session,
          tipc_own_addr(net), addr, peer_id,
          n->capabilities,
          tipc_bc_sndlink(n->net), n->bc_entry.link,
          &le->inputq,
          &n->bc_entry.namedq, &l)) {
   *respond = 0;
   goto exit;
  }
  trace_tipc_link_reset(l, TIPC_DUMP_ALL, "link created!");
  tipc_link_reset(l);
  tipc_link_fsm_evt(l, LINK_RESET_EVT);
  if (n->state == NODE_FAILINGOVER)
   tipc_link_fsm_evt(l, LINK_FAILOVER_BEGIN_EVT);
  le->link = l;
  n->link_cnt++;
  tipc_node_calculate_timer(n, l);
  if (n->link_cnt == 1) {
   intv = jiffies + msecs_to_jiffies(n->keepalive_intv);
   if (!mod_timer(&n->timer, intv))
    tipc_node_get(n);
  }
 }
 memcpy(&le->maddr, maddr, sizeof(*maddr));
exit:
 tipc_node_write_unlock(n);
 if (reset && l && !tipc_link_is_reset(l))
  tipc_node_link_down(n, b->identity, 0);
 tipc_node_put(n);
}
