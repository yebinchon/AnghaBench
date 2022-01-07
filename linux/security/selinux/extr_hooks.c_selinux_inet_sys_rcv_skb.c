
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net {int dummy; } ;
struct common_audit_data {int dummy; } ;


 int NETIF__INGRESS ;
 int NODE__RECVFROM ;
 int SECCLASS_NETIF ;
 int SECCLASS_NODE ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 int sel_netif_sid (struct net*,int,int *) ;
 int sel_netnode_sid (char*,int ,int *) ;
 int selinux_state ;

__attribute__((used)) static int selinux_inet_sys_rcv_skb(struct net *ns, int ifindex,
        char *addrp, u16 family, u32 peer_sid,
        struct common_audit_data *ad)
{
 int err;
 u32 if_sid;
 u32 node_sid;

 err = sel_netif_sid(ns, ifindex, &if_sid);
 if (err)
  return err;
 err = avc_has_perm(&selinux_state,
      peer_sid, if_sid,
      SECCLASS_NETIF, NETIF__INGRESS, ad);
 if (err)
  return err;

 err = sel_netnode_sid(addrp, family, &node_sid);
 if (err)
  return err;
 return avc_has_perm(&selinux_state,
       peer_sid, node_sid,
       SECCLASS_NODE, NODE__RECVFROM, ad);
}
