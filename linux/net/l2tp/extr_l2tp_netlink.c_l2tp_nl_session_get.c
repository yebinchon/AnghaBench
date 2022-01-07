
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct l2tp_tunnel {int dummy; } ;
struct l2tp_session {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;


 size_t L2TP_ATTR_CONN_ID ;
 size_t L2TP_ATTR_IFNAME ;
 size_t L2TP_ATTR_SESSION_ID ;
 struct net* genl_info_net (struct genl_info*) ;
 struct l2tp_session* l2tp_session_get_by_ifname (struct net*,char*) ;
 int l2tp_tunnel_dec_refcount (struct l2tp_tunnel*) ;
 struct l2tp_tunnel* l2tp_tunnel_get (struct net*,int ) ;
 struct l2tp_session* l2tp_tunnel_get_session (struct l2tp_tunnel*,int ) ;
 char* nla_data (scalar_t__) ;
 int nla_get_u32 (scalar_t__) ;

__attribute__((used)) static struct l2tp_session *l2tp_nl_session_get(struct genl_info *info)
{
 u32 tunnel_id;
 u32 session_id;
 char *ifname;
 struct l2tp_tunnel *tunnel;
 struct l2tp_session *session = ((void*)0);
 struct net *net = genl_info_net(info);

 if (info->attrs[L2TP_ATTR_IFNAME]) {
  ifname = nla_data(info->attrs[L2TP_ATTR_IFNAME]);
  session = l2tp_session_get_by_ifname(net, ifname);
 } else if ((info->attrs[L2TP_ATTR_SESSION_ID]) &&
     (info->attrs[L2TP_ATTR_CONN_ID])) {
  tunnel_id = nla_get_u32(info->attrs[L2TP_ATTR_CONN_ID]);
  session_id = nla_get_u32(info->attrs[L2TP_ATTR_SESSION_ID]);
  tunnel = l2tp_tunnel_get(net, tunnel_id);
  if (tunnel) {
   session = l2tp_tunnel_get_session(tunnel, session_id);
   l2tp_tunnel_dec_refcount(tunnel);
  }
 }

 return session;
}
