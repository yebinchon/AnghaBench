#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sctp_stream {int dummy; } ;
struct TYPE_5__ {TYPE_4__* data_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; TYPE_3__* asoc; TYPE_2__* chunk_hdr; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_8__ {int /*<<< orphan*/  ssn; } ;
struct TYPE_7__ {struct sctp_stream stream; } ;
struct TYPE_6__ {scalar_t__ type; int flags; } ;

/* Variables and functions */
 scalar_t__ SCTP_CID_DATA ; 
 int SCTP_DATA_UNORDERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct sctp_chunk *chunk)
{
	struct sctp_stream *stream;
	__u16 sid, ssn;

	if (chunk->chunk_hdr->type != SCTP_CID_DATA)
		return false;

	if (chunk->chunk_hdr->flags & SCTP_DATA_UNORDERED)
		return true;

	stream = &chunk->asoc->stream;
	sid = FUNC2(chunk);
	ssn = FUNC1(chunk->subh.data_hdr->ssn);

	return !FUNC0(ssn, FUNC3(stream, in, sid));
}