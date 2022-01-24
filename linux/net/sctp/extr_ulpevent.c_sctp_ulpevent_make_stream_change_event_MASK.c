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
struct sctp_stream_change_event {int strchange_length; void* strchange_outstrms; void* strchange_instrms; int /*<<< orphan*/  strchange_assoc_id; int /*<<< orphan*/  strchange_flags; int /*<<< orphan*/  strchange_type; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  void* __u32 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOTIFICATION ; 
 int /*<<< orphan*/  SCTP_STREAM_CHANGE_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association const*) ; 
 struct sk_buff* FUNC1 (struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ulpevent*,struct sctp_association const*) ; 
 struct sctp_stream_change_event* FUNC4 (struct sk_buff*,int) ; 

struct sctp_ulpevent *FUNC5(
	const struct sctp_association *asoc, __u16 flags,
	__u32 strchange_instrms, __u32 strchange_outstrms, gfp_t gfp)
{
	struct sctp_stream_change_event *schange;
	struct sctp_ulpevent *event;
	struct sk_buff *skb;

	event = FUNC2(sizeof(struct sctp_stream_change_event),
				  MSG_NOTIFICATION, gfp);
	if (!event)
		return NULL;

	skb = FUNC1(event);
	schange = FUNC4(skb, sizeof(struct sctp_stream_change_event));

	schange->strchange_type = SCTP_STREAM_CHANGE_EVENT;
	schange->strchange_flags = flags;
	schange->strchange_length = sizeof(struct sctp_stream_change_event);
	FUNC3(event, asoc);
	schange->strchange_assoc_id = FUNC0(asoc);
	schange->strchange_instrms = strchange_instrms;
	schange->strchange_outstrms = strchange_outstrms;

	return event;
}