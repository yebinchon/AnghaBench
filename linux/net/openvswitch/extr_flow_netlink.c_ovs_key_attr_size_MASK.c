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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OVS_KEY_ATTR_TUNNEL_INFO ; 
 size_t FUNC1 (int) ; 
 size_t FUNC2 () ; 
 size_t FUNC3 () ; 

size_t FUNC4(void)
{
	/* Whenever adding new OVS_KEY_ FIELDS, we should consider
	 * updating this function.
	 */
	FUNC0(OVS_KEY_ATTR_TUNNEL_INFO != 29);

	return    FUNC1(4)   /* OVS_KEY_ATTR_PRIORITY */
		+ FUNC1(0)   /* OVS_KEY_ATTR_TUNNEL */
		  + FUNC3()
		+ FUNC1(4)   /* OVS_KEY_ATTR_IN_PORT */
		+ FUNC1(4)   /* OVS_KEY_ATTR_SKB_MARK */
		+ FUNC1(4)   /* OVS_KEY_ATTR_DP_HASH */
		+ FUNC1(4)   /* OVS_KEY_ATTR_RECIRC_ID */
		+ FUNC1(4)   /* OVS_KEY_ATTR_CT_STATE */
		+ FUNC1(2)   /* OVS_KEY_ATTR_CT_ZONE */
		+ FUNC1(4)   /* OVS_KEY_ATTR_CT_MARK */
		+ FUNC1(16)  /* OVS_KEY_ATTR_CT_LABELS */
		+ FUNC1(40)  /* OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6 */
		+ FUNC1(0)   /* OVS_KEY_ATTR_NSH */
		  + FUNC2()
		+ FUNC1(12)  /* OVS_KEY_ATTR_ETHERNET */
		+ FUNC1(2)   /* OVS_KEY_ATTR_ETHERTYPE */
		+ FUNC1(4)   /* OVS_KEY_ATTR_VLAN */
		+ FUNC1(0)   /* OVS_KEY_ATTR_ENCAP */
		+ FUNC1(2)   /* OVS_KEY_ATTR_ETHERTYPE */
		+ FUNC1(40)  /* OVS_KEY_ATTR_IPV6 */
		+ FUNC1(2)   /* OVS_KEY_ATTR_ICMPV6 */
		+ FUNC1(28); /* OVS_KEY_ATTR_ND */
}