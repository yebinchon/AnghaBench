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
struct sctp_packet {int has_sack; int has_auth; int has_data; int has_cookie_echo; int /*<<< orphan*/  transport; int /*<<< orphan*/  size; int /*<<< orphan*/  chunk_list; struct sctp_chunk* auth; } ;
struct sctp_chunk {int /*<<< orphan*/  transport; int /*<<< orphan*/  list; TYPE_3__* asoc; int /*<<< orphan*/  sent_count; int /*<<< orphan*/  sent_at; TYPE_1__* chunk_hdr; } ;
typedef  enum sctp_xmit { ____Placeholder_sctp_xmit } sctp_xmit ;
typedef  scalar_t__ __u16 ;
struct TYPE_5__ {int /*<<< orphan*/  osacks; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {int type; int /*<<< orphan*/  length; } ;

/* Variables and functions */
#define  SCTP_CID_AUTH 132 
#define  SCTP_CID_COOKIE_ECHO 131 
#define  SCTP_CID_DATA 130 
#define  SCTP_CID_I_DATA 129 
#define  SCTP_CID_SACK 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SCTP_XMIT_OK ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_packet*,struct sctp_chunk*) ; 
 int FUNC4 (struct sctp_packet*,struct sctp_chunk*,scalar_t__) ; 

__attribute__((used)) static enum sctp_xmit FUNC5(struct sctp_packet *packet,
						 struct sctp_chunk *chunk)
{
	__u16 chunk_len = FUNC0(FUNC2(chunk->chunk_hdr->length));
	enum sctp_xmit retval = SCTP_XMIT_OK;

	/* Check to see if this chunk will fit into the packet */
	retval = FUNC4(packet, chunk, chunk_len);
	if (retval != SCTP_XMIT_OK)
		goto finish;

	/* We believe that this chunk is OK to add to the packet */
	switch (chunk->chunk_hdr->type) {
	case SCTP_CID_DATA:
	case SCTP_CID_I_DATA:
		/* Account for the data being in the packet */
		FUNC3(packet, chunk);
		/* Disallow SACK bundling after DATA. */
		packet->has_sack = 1;
		/* Disallow AUTH bundling after DATA */
		packet->has_auth = 1;
		/* Let it be knows that packet has DATA in it */
		packet->has_data = 1;
		/* timestamp the chunk for rtx purposes */
		chunk->sent_at = jiffies;
		/* Mainly used for prsctp RTX policy */
		chunk->sent_count++;
		break;
	case SCTP_CID_COOKIE_ECHO:
		packet->has_cookie_echo = 1;
		break;

	case SCTP_CID_SACK:
		packet->has_sack = 1;
		if (chunk->asoc)
			chunk->asoc->stats.osacks++;
		break;

	case SCTP_CID_AUTH:
		packet->has_auth = 1;
		packet->auth = chunk;
		break;
	}

	/* It is OK to send this chunk.  */
	FUNC1(&chunk->list, &packet->chunk_list);
	packet->size += chunk_len;
	chunk->transport = packet->transport;
finish:
	return retval;
}