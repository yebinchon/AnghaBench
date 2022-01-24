#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sockaddr_storage {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_paddr_change {int spc_length; int spc_state; int spc_error; int /*<<< orphan*/  spc_aaddr; int /*<<< orphan*/  spc_assoc_id; scalar_t__ spc_flags; int /*<<< orphan*/  spc_type; } ;
struct TYPE_4__ {TYPE_2__* sk; } ;
struct sctp_association {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* addr_to_user ) (int /*<<< orphan*/ ,union sctp_addr*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  sk_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOTIFICATION ; 
 int /*<<< orphan*/  SCTP_PEER_ADDR_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sockaddr_storage const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_association const*) ; 
 struct sk_buff* FUNC2 (struct sctp_ulpevent*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct sctp_ulpevent* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_ulpevent*,struct sctp_association const*) ; 
 struct sctp_paddr_change* FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,union sctp_addr*) ; 

struct sctp_ulpevent *FUNC9(
	const struct sctp_association *asoc,
	const struct sockaddr_storage *aaddr,
	int flags, int state, int error, gfp_t gfp)
{
	struct sctp_ulpevent *event;
	struct sctp_paddr_change  *spc;
	struct sk_buff *skb;

	event = FUNC5(sizeof(struct sctp_paddr_change),
				  MSG_NOTIFICATION, gfp);
	if (!event)
		goto fail;

	skb = FUNC2(event);
	spc = FUNC7(skb, sizeof(struct sctp_paddr_change));

	/* Sockets API Extensions for SCTP
	 * Section 5.3.1.2 SCTP_PEER_ADDR_CHANGE
	 *
	 * spc_type:
	 *
	 *    It should be SCTP_PEER_ADDR_CHANGE.
	 */
	spc->spc_type = SCTP_PEER_ADDR_CHANGE;

	/* Sockets API Extensions for SCTP
	 * Section 5.3.1.2 SCTP_PEER_ADDR_CHANGE
	 *
	 * spc_length: sizeof (__u32)
	 *
	 * This field is the total length of the notification data, including
	 * the notification header.
	 */
	spc->spc_length = sizeof(struct sctp_paddr_change);

	/* Sockets API Extensions for SCTP
	 * Section 5.3.1.2 SCTP_PEER_ADDR_CHANGE
	 *
	 * spc_flags: 16 bits (unsigned integer)
	 * Currently unused.
	 */
	spc->spc_flags = 0;

	/* Sockets API Extensions for SCTP
	 * Section 5.3.1.2 SCTP_PEER_ADDR_CHANGE
	 *
	 * spc_state:  32 bits (signed integer)
	 *
	 * This field holds one of a number of values that communicate the
	 * event that happened to the address.
	 */
	spc->spc_state = state;

	/* Sockets API Extensions for SCTP
	 * Section 5.3.1.2 SCTP_PEER_ADDR_CHANGE
	 *
	 * spc_error:  32 bits (signed integer)
	 *
	 * If the state was reached due to any error condition (e.g.
	 * ADDRESS_UNREACHABLE) any relevant error information is available in
	 * this field.
	 */
	spc->spc_error = error;

	/* Socket Extensions for SCTP
	 * 5.3.1.1 SCTP_ASSOC_CHANGE
	 *
	 * spc_assoc_id: sizeof (sctp_assoc_t)
	 *
	 * The association id field, holds the identifier for the association.
	 * All notifications for a given association have the same association
	 * identifier.  For TCP style socket, this field is ignored.
	 */
	FUNC6(event, asoc);
	spc->spc_assoc_id = FUNC1(asoc);

	/* Sockets API Extensions for SCTP
	 * Section 5.3.1.2 SCTP_PEER_ADDR_CHANGE
	 *
	 * spc_aaddr: sizeof (struct sockaddr_storage)
	 *
	 * The affected address field, holds the remote peer's address that is
	 * encountering the change of state.
	 */
	FUNC0(&spc->spc_aaddr, aaddr, sizeof(struct sockaddr_storage));

	/* Map ipv4 address into v4-mapped-on-v6 address.  */
	FUNC3(asoc->base.sk->sk_family)->addr_to_user(
					FUNC4(asoc->base.sk),
					(union sctp_addr *)&spc->spc_aaddr);

	return event;

fail:
	return NULL;
}