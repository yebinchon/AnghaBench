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
typedef  int /*<<< orphan*/  tsn ;
struct sctp_errhdr {int dummy; } ;
struct sctp_chunk {int /*<<< orphan*/  transport; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  payload ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_ERROR_NO_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*,int,void const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int /*<<< orphan*/ ,int) ; 
 struct sctp_chunk* FUNC3 (struct sctp_association const*,struct sctp_chunk const*,int) ; 

struct sctp_chunk *FUNC4(
					const struct sctp_association *asoc,
					const struct sctp_chunk *chunk,
					__u32 tsn)
{
	struct sctp_chunk *retval;
	__be32 payload;

	retval = FUNC3(asoc, chunk,
				 sizeof(struct sctp_errhdr) + sizeof(tsn));

	if (!retval)
		goto no_mem;

	/* Put the tsn back into network byte order.  */
	payload = FUNC0(tsn);
	FUNC2(retval, SCTP_ERROR_NO_DATA, sizeof(payload));
	FUNC1(retval, sizeof(payload), (const void *)&payload);

	/* RFC 2960 6.4 Multi-homed SCTP Endpoints
	 *
	 * An endpoint SHOULD transmit reply chunks (e.g., SACK,
	 * HEARTBEAT ACK, * etc.) to the same destination transport
	 * address from which it * received the DATA or control chunk
	 * to which it is replying.
	 *
	 * [ABORT back to where the offender came from.]
	 */
	if (chunk)
		retval->transport = chunk->transport;

no_mem:
	return retval;
}