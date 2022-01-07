
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int link; } ;
struct tipc_node {TYPE_2__ bc_entry; TYPE_1__* links; int keepalive_intv; int capabilities; int working_links; int link_cnt; int sync_point; int failover_sent; int action_flags; int * active_links; int state; int addr; } ;
struct TYPE_3__ {int inputq; int link; int maddr; int mtu; } ;


 size_t NODE_LMAX ;
 size_t NODE_LMIN ;
 int TIPC_DUMP_NONE ;
 scalar_t__ scnprintf (char*,size_t,char*,...) ;
 scalar_t__ tipc_link_dump (int ,int ,char*) ;
 scalar_t__ tipc_list_dump (int *,int,char*) ;
 scalar_t__ tipc_media_addr_printf (char*,size_t,int *) ;

int tipc_node_dump(struct tipc_node *n, bool more, char *buf)
{
 int i = 0;
 size_t sz = (more) ? NODE_LMAX : NODE_LMIN;

 if (!n) {
  i += scnprintf(buf, sz, "node data: (null)\n");
  return i;
 }

 i += scnprintf(buf, sz, "node data: %x", n->addr);
 i += scnprintf(buf + i, sz - i, " %x", n->state);
 i += scnprintf(buf + i, sz - i, " %d", n->active_links[0]);
 i += scnprintf(buf + i, sz - i, " %d", n->active_links[1]);
 i += scnprintf(buf + i, sz - i, " %x", n->action_flags);
 i += scnprintf(buf + i, sz - i, " %u", n->failover_sent);
 i += scnprintf(buf + i, sz - i, " %u", n->sync_point);
 i += scnprintf(buf + i, sz - i, " %d", n->link_cnt);
 i += scnprintf(buf + i, sz - i, " %u", n->working_links);
 i += scnprintf(buf + i, sz - i, " %x", n->capabilities);
 i += scnprintf(buf + i, sz - i, " %lu\n", n->keepalive_intv);

 if (!more)
  return i;

 i += scnprintf(buf + i, sz - i, "link_entry[0]:\n");
 i += scnprintf(buf + i, sz - i, " mtu: %u\n", n->links[0].mtu);
 i += scnprintf(buf + i, sz - i, " media: ");
 i += tipc_media_addr_printf(buf + i, sz - i, &n->links[0].maddr);
 i += scnprintf(buf + i, sz - i, "\n");
 i += tipc_link_dump(n->links[0].link, TIPC_DUMP_NONE, buf + i);
 i += scnprintf(buf + i, sz - i, " inputq: ");
 i += tipc_list_dump(&n->links[0].inputq, 0, buf + i);

 i += scnprintf(buf + i, sz - i, "link_entry[1]:\n");
 i += scnprintf(buf + i, sz - i, " mtu: %u\n", n->links[1].mtu);
 i += scnprintf(buf + i, sz - i, " media: ");
 i += tipc_media_addr_printf(buf + i, sz - i, &n->links[1].maddr);
 i += scnprintf(buf + i, sz - i, "\n");
 i += tipc_link_dump(n->links[1].link, TIPC_DUMP_NONE, buf + i);
 i += scnprintf(buf + i, sz - i, " inputq: ");
 i += tipc_list_dump(&n->links[1].inputq, 0, buf + i);

 i += scnprintf(buf + i, sz - i, "bclink:\n ");
 i += tipc_link_dump(n->bc_entry.link, TIPC_DUMP_NONE, buf + i);

 return i;
}
