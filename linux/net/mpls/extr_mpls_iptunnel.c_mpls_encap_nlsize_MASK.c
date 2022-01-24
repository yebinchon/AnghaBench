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
struct mpls_iptunnel_encap {int labels; scalar_t__ ttl_propagate; } ;
struct lwtunnel_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ MPLS_TTL_PROP_DEFAULT ; 
 struct mpls_iptunnel_encap* FUNC0 (struct lwtunnel_state*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct lwtunnel_state *lwtstate)
{
	struct mpls_iptunnel_encap *tun_encap_info;
	int nlsize;

	tun_encap_info = FUNC0(lwtstate);

	nlsize = FUNC1(tun_encap_info->labels * 4);

	if (tun_encap_info->ttl_propagate != MPLS_TTL_PROP_DEFAULT)
		nlsize += FUNC1(1);

	return nlsize;
}