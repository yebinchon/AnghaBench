#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net {int dummy; } ;
struct l2tp_tunnel {int dummy; } ;
struct l2tp_session {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 size_t L2TP_ATTR_CONN_ID ; 
 size_t L2TP_ATTR_IFNAME ; 
 size_t L2TP_ATTR_SESSION_ID ; 
 struct net* FUNC0 (struct genl_info*) ; 
 struct l2tp_session* FUNC1 (struct net*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2tp_tunnel*) ; 
 struct l2tp_tunnel* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 struct l2tp_session* FUNC4 (struct l2tp_tunnel*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static struct l2tp_session *FUNC7(struct genl_info *info)
{
	u32 tunnel_id;
	u32 session_id;
	char *ifname;
	struct l2tp_tunnel *tunnel;
	struct l2tp_session *session = NULL;
	struct net *net = FUNC0(info);

	if (info->attrs[L2TP_ATTR_IFNAME]) {
		ifname = FUNC5(info->attrs[L2TP_ATTR_IFNAME]);
		session = FUNC1(net, ifname);
	} else if ((info->attrs[L2TP_ATTR_SESSION_ID]) &&
		   (info->attrs[L2TP_ATTR_CONN_ID])) {
		tunnel_id = FUNC6(info->attrs[L2TP_ATTR_CONN_ID]);
		session_id = FUNC6(info->attrs[L2TP_ATTR_SESSION_ID]);
		tunnel = FUNC3(net, tunnel_id);
		if (tunnel) {
			session = FUNC4(tunnel, session_id);
			FUNC2(tunnel);
		}
	}

	return session;
}