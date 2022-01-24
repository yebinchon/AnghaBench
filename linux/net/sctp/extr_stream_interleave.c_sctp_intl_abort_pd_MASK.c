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
struct sctp_ulpq {TYPE_1__* asoc; } ;
struct sctp_stream_in {int /*<<< orphan*/  mid; scalar_t__ pd_mode; int /*<<< orphan*/  mid_uo; scalar_t__ pd_mode_uo; } ;
struct sctp_stream {scalar_t__ incnt; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  scalar_t__ __u16 ;
struct TYPE_2__ {struct sctp_stream stream; } ;

/* Variables and functions */
 struct sctp_stream_in* FUNC0 (struct sctp_stream*,scalar_t__) ; 
 int /*<<< orphan*/  in ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpq*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_stream*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_ulpq*) ; 

__attribute__((used)) static void FUNC5(struct sctp_ulpq *ulpq, gfp_t gfp)
{
	struct sctp_stream *stream = &ulpq->asoc->stream;
	__u16 sid;

	for (sid = 0; sid < stream->incnt; sid++) {
		struct sctp_stream_in *sin = FUNC0(stream, sid);
		__u32 mid;

		if (sin->pd_mode_uo) {
			sin->pd_mode_uo = 0;

			mid = sin->mid_uo;
			FUNC2(ulpq, sid, mid, 0x1, gfp);
		}

		if (sin->pd_mode) {
			sin->pd_mode = 0;

			mid = sin->mid;
			FUNC2(ulpq, sid, mid, 0, gfp);
			FUNC3(stream, in, sid, mid);

			FUNC1(ulpq, sid);
		}
	}

	/* intl abort pd happens only when all data needs to be cleaned */
	FUNC4(ulpq);
}