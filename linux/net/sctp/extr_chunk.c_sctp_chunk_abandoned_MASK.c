#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sctp_stream_out {TYPE_4__* ext; } ;
struct TYPE_11__ {scalar_t__ sinfo_timetolive; int /*<<< orphan*/  sinfo_flags; int /*<<< orphan*/  sinfo_stream; } ;
struct sctp_chunk {scalar_t__ sent_count; TYPE_6__* msg; TYPE_5__ sinfo; TYPE_3__* asoc; TYPE_2__* chunk_hdr; int /*<<< orphan*/  has_tsn; } ;
struct TYPE_12__ {int abandoned; scalar_t__ expires_at; } ;
struct TYPE_10__ {int /*<<< orphan*/ * abandoned_sent; int /*<<< orphan*/ * abandoned_unsent; } ;
struct TYPE_7__ {int /*<<< orphan*/  prsctp_capable; } ;
struct TYPE_9__ {int /*<<< orphan*/ * abandoned_sent; int /*<<< orphan*/  stream; int /*<<< orphan*/ * abandoned_unsent; TYPE_1__ peer; } ;
struct TYPE_8__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTX ; 
 int SCTP_DATA_FIRST_FRAG ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct sctp_stream_out* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTL ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(struct sctp_chunk *chunk)
{
	if (!chunk->asoc->peer.prsctp_capable)
		return 0;

	if (chunk->msg->abandoned)
		return 1;

	if (!chunk->has_tsn &&
	    !(chunk->chunk_hdr->flags & SCTP_DATA_FIRST_FRAG))
		return 0;

	if (FUNC3(chunk->sinfo.sinfo_flags) &&
	    FUNC5(jiffies, chunk->msg->expires_at)) {
		struct sctp_stream_out *streamout =
			FUNC4(&chunk->asoc->stream,
				chunk->sinfo.sinfo_stream);

		if (chunk->sent_count) {
			chunk->asoc->abandoned_sent[FUNC0(TTL)]++;
			streamout->ext->abandoned_sent[FUNC0(TTL)]++;
		} else {
			chunk->asoc->abandoned_unsent[FUNC0(TTL)]++;
			streamout->ext->abandoned_unsent[FUNC0(TTL)]++;
		}
		chunk->msg->abandoned = 1;
		return 1;
	} else if (FUNC2(chunk->sinfo.sinfo_flags) &&
		   chunk->sent_count > chunk->sinfo.sinfo_timetolive) {
		struct sctp_stream_out *streamout =
			FUNC4(&chunk->asoc->stream,
				chunk->sinfo.sinfo_stream);

		chunk->asoc->abandoned_sent[FUNC0(RTX)]++;
		streamout->ext->abandoned_sent[FUNC0(RTX)]++;
		chunk->msg->abandoned = 1;
		return 1;
	} else if (!FUNC1(chunk->sinfo.sinfo_flags) &&
		   chunk->msg->expires_at &&
		   FUNC5(jiffies, chunk->msg->expires_at)) {
		chunk->msg->abandoned = 1;
		return 1;
	}
	/* PRIO policy is processed by sendmsg, not here */

	return 0;
}