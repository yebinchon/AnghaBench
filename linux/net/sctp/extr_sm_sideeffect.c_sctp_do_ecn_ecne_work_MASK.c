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
struct sctp_transport {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int /*<<< orphan*/  last_cwr_tsn; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_LOWER_CWND_ECNE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_transport* FUNC1 (struct sctp_association*,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC2 (struct sctp_association*,int /*<<< orphan*/ ,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_transport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sctp_chunk *FUNC4(struct sctp_association *asoc,
						__u32 lowest_tsn,
						struct sctp_chunk *chunk)
{
	struct sctp_chunk *repl;

	/* Our previously transmitted packet ran into some congestion
	 * so we should take action by reducing cwnd and ssthresh
	 * and then ACK our peer that we we've done so by
	 * sending a CWR.
	 */

	/* First, try to determine if we want to actually lower
	 * our cwnd variables.  Only lower them if the ECNE looks more
	 * recent than the last response.
	 */
	if (FUNC0(asoc->last_cwr_tsn, lowest_tsn)) {
		struct sctp_transport *transport;

		/* Find which transport's congestion variables
		 * need to be adjusted.
		 */
		transport = FUNC1(asoc, lowest_tsn);

		/* Update the congestion variables. */
		if (transport)
			FUNC3(transport,
						  SCTP_LOWER_CWND_ECNE);
		asoc->last_cwr_tsn = lowest_tsn;
	}

	/* Always try to quiet the other end.  In case of lost CWR,
	 * resend last_cwr_tsn.
	 */
	repl = FUNC2(asoc, asoc->last_cwr_tsn, chunk);

	/* If we run out of memory, it will look like a lost CWR.  We'll
	 * get back in sync eventually.
	 */
	return repl;
}