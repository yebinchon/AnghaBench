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
struct sk_buff {scalar_t__ _nfct; } ;
struct nf_hook_state {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 unsigned int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct sk_buff*,struct nf_hook_state const*) ; 
 struct nf_conn* FUNC3 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC4 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conn*) ; 

__attribute__((used)) static unsigned int FUNC6(void *priv,
					 struct sk_buff *skb,
					 const struct nf_hook_state *state)
{
	if (FUNC1(FUNC0(skb))) { /* IP_NODEFRAG setsockopt set */
		enum ip_conntrack_info ctinfo;
		struct nf_conn *tmpl;

		tmpl = FUNC3(skb, &ctinfo);
		if (tmpl && FUNC4(tmpl)) {
			/* when skipping ct, clear templates to avoid fooling
			 * later targets/matches
			 */
			skb->_nfct = 0;
			FUNC5(tmpl);
		}
		return NF_ACCEPT;
	}

	return FUNC2(skb, state);
}