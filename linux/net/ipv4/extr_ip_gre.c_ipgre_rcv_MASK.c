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
struct tnl_ptk_info {scalar_t__ proto; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct ip_tunnel_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TEB ; 
 int PACKET_NEXT ; 
 int FUNC0 (struct sk_buff*,struct tnl_ptk_info const*,struct ip_tunnel_net*,int,int) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gre_tap_net_id ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipgre_net_id ; 
 struct ip_tunnel_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, const struct tnl_ptk_info *tpi,
		     int hdr_len)
{
	struct net *net = FUNC1(skb->dev);
	struct ip_tunnel_net *itn;
	int res;

	if (tpi->proto == FUNC2(ETH_P_TEB))
		itn = FUNC3(net, gre_tap_net_id);
	else
		itn = FUNC3(net, ipgre_net_id);

	res = FUNC0(skb, tpi, itn, hdr_len, false);
	if (res == PACKET_NEXT && tpi->proto == FUNC2(ETH_P_TEB)) {
		/* ipgre tunnels in collect metadata mode should receive
		 * also ETH_P_TEB traffic.
		 */
		itn = FUNC3(net, ipgre_net_id);
		res = FUNC0(skb, tpi, itn, hdr_len, true);
	}
	return res;
}