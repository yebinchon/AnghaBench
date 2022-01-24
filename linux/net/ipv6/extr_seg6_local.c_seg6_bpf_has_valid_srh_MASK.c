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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct seg6_bpf_srh_state {int valid; int hdrlen; struct ipv6_sr_hdr* srh; } ;
struct ipv6_sr_hdr {int hdrlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  seg6_bpf_srh_states ; 
 int /*<<< orphan*/  FUNC0 (struct ipv6_sr_hdr*,int) ; 
 struct seg6_bpf_srh_state* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

bool FUNC3(struct sk_buff *skb)
{
	struct seg6_bpf_srh_state *srh_state =
		FUNC1(&seg6_bpf_srh_states);
	struct ipv6_sr_hdr *srh = srh_state->srh;

	if (FUNC2(srh == NULL))
		return false;

	if (FUNC2(!srh_state->valid)) {
		if ((srh_state->hdrlen & 7) != 0)
			return false;

		srh->hdrlen = (u8)(srh_state->hdrlen >> 3);
		if (!FUNC0(srh, (srh->hdrlen + 1) << 3))
			return false;

		srh_state->valid = true;
	}

	return true;
}