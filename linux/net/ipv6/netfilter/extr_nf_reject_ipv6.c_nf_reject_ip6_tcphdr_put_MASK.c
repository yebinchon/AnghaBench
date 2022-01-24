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
typedef  scalar_t__ u_int8_t ;
struct tcphdr {int doff; int ack; int rst; scalar_t__ check; scalar_t__ urg_ptr; scalar_t__ window; scalar_t__ seq; scalar_t__ fin; scalar_t__ syn; scalar_t__ ack_seq; int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcphdr*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 struct tcphdr* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

void FUNC7(struct sk_buff *nskb,
			      const struct sk_buff *oldskb,
			      const struct tcphdr *oth, unsigned int otcplen)
{
	struct tcphdr *tcph;
	int needs_ack;

	FUNC6(nskb);
	tcph = FUNC5(nskb, sizeof(struct tcphdr));
	/* Truncate to length (no data) */
	tcph->doff = sizeof(struct tcphdr)/4;
	tcph->source = oth->dest;
	tcph->dest = oth->source;

	if (oth->ack) {
		needs_ack = 0;
		tcph->seq = oth->ack_seq;
		tcph->ack_seq = 0;
	} else {
		needs_ack = 1;
		tcph->ack_seq = FUNC2(FUNC4(oth->seq) + oth->syn + oth->fin +
				      otcplen - (oth->doff<<2));
		tcph->seq = 0;
	}

	/* Reset flags */
	((u_int8_t *)tcph)[13] = 0;
	tcph->rst = 1;
	tcph->ack = needs_ack;
	tcph->window = 0;
	tcph->urg_ptr = 0;
	tcph->check = 0;

	/* Adjust TCP checksum */
	tcph->check = FUNC0(&FUNC3(nskb)->saddr,
				      &FUNC3(nskb)->daddr,
				      sizeof(struct tcphdr), IPPROTO_TCP,
				      FUNC1(tcph,
						   sizeof(struct tcphdr), 0));
}