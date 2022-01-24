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
struct TYPE_2__ {int flags; int /*<<< orphan*/  dst_port; } ;
struct vxlan_dev {TYPE_1__ cfg; } ;
struct vport {int /*<<< orphan*/  dev; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_TUNNEL_ATTR_DST_PORT ; 
 int /*<<< orphan*/  OVS_TUNNEL_ATTR_EXTENSION ; 
 int /*<<< orphan*/  OVS_VXLAN_EXT_GBP ; 
 int VXLAN_F_GBP ; 
 struct vxlan_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct vport *vport, struct sk_buff *skb)
{
	struct vxlan_dev *vxlan = FUNC0(vport->dev);
	__be16 dst_port = vxlan->cfg.dst_port;

	if (FUNC4(skb, OVS_TUNNEL_ATTR_DST_PORT, FUNC5(dst_port)))
		return -EMSGSIZE;

	if (vxlan->cfg.flags & VXLAN_F_GBP) {
		struct nlattr *exts;

		exts = FUNC2(skb, OVS_TUNNEL_ATTR_EXTENSION);
		if (!exts)
			return -EMSGSIZE;

		if (vxlan->cfg.flags & VXLAN_F_GBP &&
		    FUNC3(skb, OVS_VXLAN_EXT_GBP))
			return -EMSGSIZE;

		FUNC1(skb, exts);
	}

	return 0;
}