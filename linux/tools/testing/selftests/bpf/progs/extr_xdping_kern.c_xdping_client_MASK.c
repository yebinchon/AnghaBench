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
struct xdp_md {scalar_t__ data; scalar_t__ data_end; } ;
struct pinginfo {scalar_t__ seq; scalar_t__ start; scalar_t__* times; size_t count; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_3__ {scalar_t__ sequence; } ;
struct TYPE_4__ {TYPE_1__ echo; } ;
struct icmphdr {scalar_t__ checksum; TYPE_2__ un; int /*<<< orphan*/  type; } ;
struct ethhdr {int dummy; } ;
typedef  size_t __u8 ;
typedef  scalar_t__ __u64 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  void* __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_ECHO ; 
 int /*<<< orphan*/  ICMP_ECHOREPLY ; 
 int /*<<< orphan*/  ICMP_ECHO_LEN ; 
 size_t XDPING_MAX_COUNT ; 
 int XDP_PASS ; 
 int XDP_TX ; 
 void* FUNC0 (scalar_t__) ; 
 void* FUNC1 () ; 
 struct pinginfo* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (struct xdp_md*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct icmphdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ping_map ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

int FUNC7(struct xdp_md *ctx)
{
	void *data_end = (void *)(long)ctx->data_end;
	void *data = (void *)(long)ctx->data;
	struct pinginfo *pinginfo = NULL;
	struct ethhdr *eth = data;
	struct icmphdr *icmph;
	struct iphdr *iph;
	__u64 recvtime;
	__be32 raddr;
	__be16 seq;
	int ret;
	__u8 i;

	ret = FUNC4(ctx, ICMP_ECHOREPLY);

	if (ret != XDP_TX)
		return ret;

	iph = data + sizeof(*eth);
	icmph = data + sizeof(*eth) + sizeof(*iph);
	raddr = iph->saddr;

	/* Record time reply received. */
	recvtime = FUNC1();
	pinginfo = FUNC2(&ping_map, &raddr);
	if (!pinginfo || pinginfo->seq != icmph->un.echo.sequence)
		return XDP_PASS;

	if (pinginfo->start) {
#pragma clang loop unroll(full)
		for (i = 0; i < XDPING_MAX_COUNT; i++) {
			if (pinginfo->times[i] == 0)
				break;
		}
		/* verifier is fussy here... */
		if (i < XDPING_MAX_COUNT) {
			pinginfo->times[i] = recvtime -
					     pinginfo->start;
			pinginfo->start = 0;
			i++;
		}
		/* No more space for values? */
		if (i == pinginfo->count || i == XDPING_MAX_COUNT)
			return XDP_PASS;
	}

	/* Now convert reply back into echo request. */
	FUNC6(data);
	iph->saddr = iph->daddr;
	iph->daddr = raddr;
	icmph->type = ICMP_ECHO;
	seq = FUNC0(FUNC3(icmph->un.echo.sequence) + 1);
	icmph->un.echo.sequence = seq;
	icmph->checksum = 0;
	icmph->checksum = FUNC5(icmph, ICMP_ECHO_LEN);

	pinginfo->seq = seq;
	pinginfo->start = FUNC1();

	return XDP_TX;
}