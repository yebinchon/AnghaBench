#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nf_hook_state {int dummy; } ;
struct TYPE_3__ {scalar_t__ stream_ts; } ;
struct TYPE_4__ {TYPE_1__ udp; } ;
struct nf_conn {int /*<<< orphan*/  status; TYPE_2__ proto; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IPCT_ASSURED ; 
 int /*<<< orphan*/  IPS_ASSURED_BIT ; 
 int /*<<< orphan*/  IPS_SEEN_REPLY_BIT ; 
 int NF_ACCEPT ; 
 size_t UDP_CT_REPLIED ; 
 size_t UDP_CT_UNREPLIED ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*,int,struct sk_buff*,unsigned int) ; 
 unsigned int* FUNC4 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (struct sk_buff*,unsigned int,struct nf_hook_state const*) ; 
 unsigned int* FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct nf_conn *ct,
			    struct sk_buff *skb,
			    unsigned int dataoff,
			    enum ip_conntrack_info ctinfo,
			    const struct nf_hook_state *state)
{
	unsigned int *timeouts;

	if (FUNC8(skb, dataoff, state))
		return -NF_ACCEPT;

	timeouts = FUNC4(ct);
	if (!timeouts)
		timeouts = FUNC9(FUNC2(ct));

	if (!FUNC1(ct))
		ct->proto.udp.stream_ts = 2 * HZ + jiffies;

	/* If we've seen traffic both ways, this is some kind of UDP
	 * stream. Set Assured.
	 */
	if (FUNC6(IPS_SEEN_REPLY_BIT, &ct->status)) {
		unsigned long extra = timeouts[UDP_CT_UNREPLIED];

		/* Still active after two seconds? Extend timeout. */
		if (FUNC7(jiffies, ct->proto.udp.stream_ts))
			extra = timeouts[UDP_CT_REPLIED];

		FUNC3(ct, ctinfo, skb, extra);

		/* Also, more likely to be important, and not a probe */
		if (!FUNC5(IPS_ASSURED_BIT, &ct->status))
			FUNC0(IPCT_ASSURED, ct);
	} else {
		FUNC3(ct, ctinfo, skb,
				   timeouts[UDP_CT_UNREPLIED]);
	}
	return NF_ACCEPT;
}