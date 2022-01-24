#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vport {int /*<<< orphan*/  dp; } ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  mark; int /*<<< orphan*/  dev; } ;
struct ip_tunnel_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ cutlen; scalar_t__ mru; struct vport* input_vport; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct sw_flow_key*) ; 
 int FUNC5 (struct ip_tunnel_info const*,struct sk_buff*,struct sw_flow_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct vport *vport, struct sk_buff *skb,
		      const struct ip_tunnel_info *tun_info)
{
	struct sw_flow_key key;
	int error;

	FUNC0(skb)->input_vport = vport;
	FUNC0(skb)->mru = 0;
	FUNC0(skb)->cutlen = 0;
	if (FUNC7(FUNC1(skb->dev) != FUNC3(vport->dp))) {
		u32 mark;

		mark = skb->mark;
		FUNC6(skb, true);
		skb->mark = mark;
		tun_info = NULL;
	}

	/* Extract flow from 'skb' into 'key'. */
	error = FUNC5(tun_info, skb, &key);
	if (FUNC7(error)) {
		FUNC2(skb);
		return error;
	}
	FUNC4(skb, &key);
	return 0;
}