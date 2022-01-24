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
struct sctp_chunk {TYPE_1__* transport; } ;
struct sctp_association {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ipaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SCTP_CID_COOKIE_ACK ; 
 TYPE_1__* FUNC0 (struct sctp_association const*,int /*<<< orphan*/ *) ; 
 struct sctp_chunk* FUNC1 (struct sctp_association const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sctp_chunk *FUNC2(const struct sctp_association *asoc,
					const struct sctp_chunk *chunk)
{
	struct sctp_chunk *retval;

	retval = FUNC1(asoc, SCTP_CID_COOKIE_ACK, 0, 0, GFP_ATOMIC);

	/* RFC 2960 6.4 Multi-homed SCTP Endpoints
	 *
	 * An endpoint SHOULD transmit reply chunks (e.g., SACK,
	 * HEARTBEAT ACK, * etc.) to the same destination transport
	 * address from which it * received the DATA or control chunk
	 * to which it is replying.
	 *
	 * [COOKIE ACK back to where the COOKIE ECHO came from.]
	 */
	if (retval && chunk && chunk->transport)
		retval->transport =
			FUNC0(asoc,
						&chunk->transport->ipaddr);

	return retval;
}