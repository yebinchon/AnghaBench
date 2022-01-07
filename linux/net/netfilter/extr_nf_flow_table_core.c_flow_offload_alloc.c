
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nf_flow_route {TYPE_2__* tuple; } ;
struct TYPE_3__ {int use; } ;
struct nf_conn {int status; TYPE_1__ ct_general; } ;
struct flow_offload {int flags; } ;
struct flow_offload_entry {struct nf_conn* ct; struct flow_offload flow; } ;
struct TYPE_4__ {int dst; } ;


 size_t FLOW_OFFLOAD_DIR_ORIGINAL ;
 size_t FLOW_OFFLOAD_DIR_REPLY ;
 int FLOW_OFFLOAD_DNAT ;
 int FLOW_OFFLOAD_SNAT ;
 int GFP_ATOMIC ;
 int IPS_DST_NAT ;
 int IPS_SRC_NAT ;
 int atomic_inc_not_zero (int *) ;
 int dst_hold_safe (int ) ;
 int dst_release (int ) ;
 int flow_offload_fill_dir (struct flow_offload*,struct nf_conn*,struct nf_flow_route*,size_t) ;
 int kfree (struct flow_offload_entry*) ;
 struct flow_offload_entry* kzalloc (int,int ) ;
 scalar_t__ nf_ct_is_dying (struct nf_conn*) ;
 int nf_ct_put (struct nf_conn*) ;
 scalar_t__ unlikely (int) ;

struct flow_offload *
flow_offload_alloc(struct nf_conn *ct, struct nf_flow_route *route)
{
 struct flow_offload_entry *entry;
 struct flow_offload *flow;

 if (unlikely(nf_ct_is_dying(ct) ||
     !atomic_inc_not_zero(&ct->ct_general.use)))
  return ((void*)0);

 entry = kzalloc(sizeof(*entry), GFP_ATOMIC);
 if (!entry)
  goto err_ct_refcnt;

 flow = &entry->flow;

 if (!dst_hold_safe(route->tuple[FLOW_OFFLOAD_DIR_ORIGINAL].dst))
  goto err_dst_cache_original;

 if (!dst_hold_safe(route->tuple[FLOW_OFFLOAD_DIR_REPLY].dst))
  goto err_dst_cache_reply;

 entry->ct = ct;

 flow_offload_fill_dir(flow, ct, route, FLOW_OFFLOAD_DIR_ORIGINAL);
 flow_offload_fill_dir(flow, ct, route, FLOW_OFFLOAD_DIR_REPLY);

 if (ct->status & IPS_SRC_NAT)
  flow->flags |= FLOW_OFFLOAD_SNAT;
 if (ct->status & IPS_DST_NAT)
  flow->flags |= FLOW_OFFLOAD_DNAT;

 return flow;

err_dst_cache_reply:
 dst_release(route->tuple[FLOW_OFFLOAD_DIR_ORIGINAL].dst);
err_dst_cache_original:
 kfree(entry);
err_ct_refcnt:
 nf_ct_put(ct);

 return ((void*)0);
}
