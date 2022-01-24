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
typedef  int /*<<< orphan*/  tsnreq ;
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct sctp_strreset_tsnreq {int /*<<< orphan*/  request_seq; TYPE_1__ param_hdr; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int /*<<< orphan*/  strreset_outseq; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_PARAM_RESET_TSN_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int,struct sctp_strreset_tsnreq*) ; 
 struct sctp_chunk* FUNC3 (struct sctp_association const*,int) ; 

struct sctp_chunk *FUNC4(
					const struct sctp_association *asoc)
{
	struct sctp_strreset_tsnreq tsnreq;
	__u16 length = sizeof(tsnreq);
	struct sctp_chunk *retval;

	retval = FUNC3(asoc, length);
	if (!retval)
		return NULL;

	tsnreq.param_hdr.type = SCTP_PARAM_RESET_TSN_REQUEST;
	tsnreq.param_hdr.length = FUNC1(length);
	tsnreq.request_seq = FUNC0(asoc->strreset_outseq);

	FUNC2(retval, sizeof(tsnreq), &tsnreq);

	return retval;
}