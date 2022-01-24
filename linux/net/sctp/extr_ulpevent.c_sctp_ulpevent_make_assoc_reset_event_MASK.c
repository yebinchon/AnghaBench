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
struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_association {int dummy; } ;
struct sctp_assoc_reset_event {int assocreset_length; void* assocreset_remote_tsn; void* assocreset_local_tsn; int /*<<< orphan*/  assocreset_assoc_id; int /*<<< orphan*/  assocreset_flags; int /*<<< orphan*/  assocreset_type; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  void* __u32 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOTIFICATION ; 
 int /*<<< orphan*/  SCTP_ASSOC_RESET_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association const*) ; 
 struct sk_buff* FUNC1 (struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ulpevent*,struct sctp_association const*) ; 
 struct sctp_assoc_reset_event* FUNC4 (struct sk_buff*,int) ; 

struct sctp_ulpevent *FUNC5(
	const struct sctp_association *asoc, __u16 flags, __u32 local_tsn,
	__u32 remote_tsn, gfp_t gfp)
{
	struct sctp_assoc_reset_event *areset;
	struct sctp_ulpevent *event;
	struct sk_buff *skb;

	event = FUNC2(sizeof(struct sctp_assoc_reset_event),
				  MSG_NOTIFICATION, gfp);
	if (!event)
		return NULL;

	skb = FUNC1(event);
	areset = FUNC4(skb, sizeof(struct sctp_assoc_reset_event));

	areset->assocreset_type = SCTP_ASSOC_RESET_EVENT;
	areset->assocreset_flags = flags;
	areset->assocreset_length = sizeof(struct sctp_assoc_reset_event);
	FUNC3(event, asoc);
	areset->assocreset_assoc_id = FUNC0(asoc);
	areset->assocreset_local_tsn = local_tsn;
	areset->assocreset_remote_tsn = remote_tsn;

	return event;
}