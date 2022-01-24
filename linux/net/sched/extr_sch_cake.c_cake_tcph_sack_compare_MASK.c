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
typedef  scalar_t__ u32 ;
struct tcphdr {int /*<<< orphan*/  ack_seq; } ;
struct tcp_sack_block_wire {int /*<<< orphan*/  end_seq; int /*<<< orphan*/  start_seq; } ;

/* Variables and functions */
 scalar_t__ TCPOLEN_SACK_BASE ; 
 int /*<<< orphan*/  TCPOPT_SACK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 struct tcp_sack_block_wire* FUNC2 (struct tcphdr const*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct tcphdr *tcph_a,
				  const struct tcphdr *tcph_b)
{
	const struct tcp_sack_block_wire *sack_a, *sack_b;
	u32 ack_seq_a = FUNC4(tcph_a->ack_seq);
	u32 bytes_a = 0, bytes_b = 0;
	int oplen_a, oplen_b;
	bool first = true;

	sack_a = FUNC2(tcph_a, TCPOPT_SACK, &oplen_a);
	sack_b = FUNC2(tcph_b, TCPOPT_SACK, &oplen_b);

	/* pointers point to option contents */
	oplen_a -= TCPOLEN_SACK_BASE;
	oplen_b -= TCPOLEN_SACK_BASE;

	if (sack_a && oplen_a >= sizeof(*sack_a) &&
	    (!sack_b || oplen_b < sizeof(*sack_b)))
		return -1;
	else if (sack_b && oplen_b >= sizeof(*sack_b) &&
		 (!sack_a || oplen_a < sizeof(*sack_a)))
		return 1;
	else if ((!sack_a || oplen_a < sizeof(*sack_a)) &&
		 (!sack_b || oplen_b < sizeof(*sack_b)))
		return 0;

	while (oplen_a >= sizeof(*sack_a)) {
		const struct tcp_sack_block_wire *sack_tmp = sack_b;
		u32 start_a = FUNC3(&sack_a->start_seq);
		u32 end_a = FUNC3(&sack_a->end_seq);
		int oplen_tmp = oplen_b;
		bool found = false;

		/* DSACK; always considered greater to prevent dropping */
		if (FUNC1(start_a, ack_seq_a))
			return -1;

		bytes_a += end_a - start_a;

		while (oplen_tmp >= sizeof(*sack_tmp)) {
			u32 start_b = FUNC3(&sack_tmp->start_seq);
			u32 end_b = FUNC3(&sack_tmp->end_seq);

			/* first time through we count the total size */
			if (first)
				bytes_b += end_b - start_b;

			if (!FUNC0(start_b, start_a) && !FUNC1(end_b, end_a)) {
				found = true;
				if (!first)
					break;
			}
			oplen_tmp -= sizeof(*sack_tmp);
			sack_tmp++;
		}

		if (!found)
			return -1;

		oplen_a -= sizeof(*sack_a);
		sack_a++;
		first = false;
	}

	/* If we made it this far, all ranges SACKed by A are covered by B, so
	 * either the SACKs are equal, or B SACKs more bytes.
	 */
	return bytes_b > bytes_a ? 1 : 0;
}