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
struct sctp_stream_in {scalar_t__ pd_mode; scalar_t__ pd_mode_uo; int /*<<< orphan*/  mid_uo; } ;
struct sctp_stream {int dummy; } ;
typedef  int __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {struct sctp_stream stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SCTP_FTSN_U_BIT ; 
 int /*<<< orphan*/  in ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_stream_in* FUNC5 (struct sctp_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sctp_ulpq *ulpq, __u16 sid, __u32 mid,
			   __u8 flags)
{
	struct sctp_stream_in *sin = FUNC5(&ulpq->asoc->stream, sid);
	struct sctp_stream *stream  = &ulpq->asoc->stream;

	if (flags & SCTP_FTSN_U_BIT) {
		if (sin->pd_mode_uo && FUNC0(sin->mid_uo, mid)) {
			sin->pd_mode_uo = 0;
			FUNC2(ulpq, sid, mid, 0x1,
						  GFP_ATOMIC);
		}
		return;
	}

	if (FUNC0(mid, FUNC3(stream, in, sid)))
		return;

	if (sin->pd_mode) {
		sin->pd_mode = 0;
		FUNC2(ulpq, sid, mid, 0x0, GFP_ATOMIC);
	}

	FUNC4(stream, in, sid, mid);

	FUNC1(ulpq, sid);
}