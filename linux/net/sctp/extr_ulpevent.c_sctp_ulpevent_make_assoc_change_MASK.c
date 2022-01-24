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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  truesize; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {TYPE_1__* chunk_hdr; int /*<<< orphan*/  skb; } ;
struct sctp_association {int dummy; } ;
struct sctp_assoc_change {int /*<<< orphan*/  sac_assoc_id; void* sac_inbound_streams; void* sac_outbound_streams; void* sac_error; int /*<<< orphan*/  sac_length; scalar_t__ sac_flags; void* sac_state; int /*<<< orphan*/  sac_type; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  void* __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOTIFICATION ; 
 int /*<<< orphan*/  SCTP_ASSOC_CHANGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_association const*) ; 
 struct sk_buff* FUNC2 (struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_ulpevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_ulpevent* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_ulpevent*,struct sctp_association const*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_assoc_change* FUNC8 (struct sk_buff*,int) ; 
 struct sctp_assoc_change* FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 

struct sctp_ulpevent  *FUNC11(
	const struct sctp_association *asoc,
	__u16 flags, __u16 state, __u16 error, __u16 outbound,
	__u16 inbound, struct sctp_chunk *chunk, gfp_t gfp)
{
	struct sctp_ulpevent *event;
	struct sctp_assoc_change *sac;
	struct sk_buff *skb;

	/* If the lower layer passed in the chunk, it will be
	 * an ABORT, so we need to include it in the sac_info.
	 */
	if (chunk) {
		/* Copy the chunk data to a new skb and reserve enough
		 * head room to use as notification.
		 */
		skb = FUNC7(chunk->skb,
				      sizeof(struct sctp_assoc_change), 0, gfp);

		if (!skb)
			goto fail;

		/* Embed the event fields inside the cloned skb.  */
		event = FUNC3(skb);
		FUNC4(event, MSG_NOTIFICATION, skb->truesize);

		/* Include the notification structure */
		sac = FUNC8(skb, sizeof(struct sctp_assoc_change));

		/* Trim the buffer to the right length.  */
		FUNC10(skb, sizeof(struct sctp_assoc_change) +
			 FUNC0(chunk->chunk_hdr->length) -
			 sizeof(struct sctp_chunkhdr));
	} else {
		event = FUNC5(sizeof(struct sctp_assoc_change),
				  MSG_NOTIFICATION, gfp);
		if (!event)
			goto fail;

		skb = FUNC2(event);
		sac = FUNC9(skb, sizeof(struct sctp_assoc_change));
	}

	/* Socket Extensions for SCTP
	 * 5.3.1.1 SCTP_ASSOC_CHANGE
	 *
	 * sac_type:
	 * It should be SCTP_ASSOC_CHANGE.
	 */
	sac->sac_type = SCTP_ASSOC_CHANGE;

	/* Socket Extensions for SCTP
	 * 5.3.1.1 SCTP_ASSOC_CHANGE
	 *
	 * sac_state: 32 bits (signed integer)
	 * This field holds one of a number of values that communicate the
	 * event that happened to the association.
	 */
	sac->sac_state = state;

	/* Socket Extensions for SCTP
	 * 5.3.1.1 SCTP_ASSOC_CHANGE
	 *
	 * sac_flags: 16 bits (unsigned integer)
	 * Currently unused.
	 */
	sac->sac_flags = 0;

	/* Socket Extensions for SCTP
	 * 5.3.1.1 SCTP_ASSOC_CHANGE
	 *
	 * sac_length: sizeof (__u32)
	 * This field is the total length of the notification data, including
	 * the notification header.
	 */
	sac->sac_length = skb->len;

	/* Socket Extensions for SCTP
	 * 5.3.1.1 SCTP_ASSOC_CHANGE
	 *
	 * sac_error:  32 bits (signed integer)
	 *
	 * If the state was reached due to a error condition (e.g.
	 * COMMUNICATION_LOST) any relevant error information is available in
	 * this field. This corresponds to the protocol error codes defined in
	 * [SCTP].
	 */
	sac->sac_error = error;

	/* Socket Extensions for SCTP
	 * 5.3.1.1 SCTP_ASSOC_CHANGE
	 *
	 * sac_outbound_streams:  16 bits (unsigned integer)
	 * sac_inbound_streams:  16 bits (unsigned integer)
	 *
	 * The maximum number of streams allowed in each direction are
	 * available in sac_outbound_streams and sac_inbound streams.
	 */
	sac->sac_outbound_streams = outbound;
	sac->sac_inbound_streams = inbound;

	/* Socket Extensions for SCTP
	 * 5.3.1.1 SCTP_ASSOC_CHANGE
	 *
	 * sac_assoc_id: sizeof (sctp_assoc_t)
	 *
	 * The association id field, holds the identifier for the association.
	 * All notifications for a given association have the same association
	 * identifier.  For TCP style socket, this field is ignored.
	 */
	FUNC6(event, asoc);
	sac->sac_assoc_id = FUNC1(asoc);

	return event;

fail:
	return NULL;
}