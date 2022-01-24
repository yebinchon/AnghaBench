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
typedef  int u64 ;
struct sw_flow_match {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  int __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int OVS_KEY_ATTR_ENCAP ; 
 int OVS_KEY_ATTR_ETHERNET ; 
 int OVS_KEY_ATTR_ETHERTYPE ; 
 int OVS_KEY_ATTR_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  VLAN_CFI_MASK ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nlattr const*) ; 
 scalar_t__ FUNC4 (struct nlattr const*) ; 

__attribute__((used)) static int FUNC5(const struct sw_flow_match *match,
				      u64 key_attrs, bool inner,
				      const struct nlattr **a, bool log)
{
	__be16 tci = 0;

	if (!((key_attrs & (1 << OVS_KEY_ATTR_ETHERNET)) &&
	      (key_attrs & (1 << OVS_KEY_ATTR_ETHERTYPE)) &&
	       FUNC1(FUNC3(a[OVS_KEY_ATTR_ETHERTYPE])))) {
		/* Not a VLAN. */
		return 0;
	}

	if (!((key_attrs & (1 << OVS_KEY_ATTR_VLAN)) &&
	      (key_attrs & (1 << OVS_KEY_ATTR_ENCAP)))) {
		FUNC0(log, "Invalid %s frame", (inner) ? "C-VLAN" : "VLAN");
		return -EINVAL;
	}

	if (a[OVS_KEY_ATTR_VLAN])
		tci = FUNC3(a[OVS_KEY_ATTR_VLAN]);

	if (!(tci & FUNC2(VLAN_CFI_MASK))) {
		if (tci) {
			FUNC0(log, "%s TCI does not have VLAN_CFI_MASK bit set.",
				  (inner) ? "C-VLAN" : "VLAN");
			return -EINVAL;
		} else if (FUNC4(a[OVS_KEY_ATTR_ENCAP])) {
			/* Corner case for truncated VLAN header. */
			FUNC0(log, "Truncated %s header has non-zero encap attribute.",
				  (inner) ? "C-VLAN" : "VLAN");
			return -EINVAL;
		}
	}

	return 1;
}