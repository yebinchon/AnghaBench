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
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

size_t FUNC2(void)
{
	/* Whenever adding new OVS_TUNNEL_KEY_ FIELDS, we should consider
	 * updating this function.
	 */
	return    FUNC1(8) /* OVS_TUNNEL_KEY_ATTR_ID */
		+ FUNC0(16)   /* OVS_TUNNEL_KEY_ATTR_IPV[46]_SRC */
		+ FUNC0(16)   /* OVS_TUNNEL_KEY_ATTR_IPV[46]_DST */
		+ FUNC0(1)    /* OVS_TUNNEL_KEY_ATTR_TOS */
		+ FUNC0(1)    /* OVS_TUNNEL_KEY_ATTR_TTL */
		+ FUNC0(0)    /* OVS_TUNNEL_KEY_ATTR_DONT_FRAGMENT */
		+ FUNC0(0)    /* OVS_TUNNEL_KEY_ATTR_CSUM */
		+ FUNC0(0)    /* OVS_TUNNEL_KEY_ATTR_OAM */
		+ FUNC0(256)  /* OVS_TUNNEL_KEY_ATTR_GENEVE_OPTS */
		/* OVS_TUNNEL_KEY_ATTR_VXLAN_OPTS and
		 * OVS_TUNNEL_KEY_ATTR_ERSPAN_OPTS is mutually exclusive with
		 * OVS_TUNNEL_KEY_ATTR_GENEVE_OPTS and covered by it.
		 */
		+ FUNC0(2)    /* OVS_TUNNEL_KEY_ATTR_TP_SRC */
		+ FUNC0(2);   /* OVS_TUNNEL_KEY_ATTR_TP_DST */
}