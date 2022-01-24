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
struct sctp_stream_out_ext {int /*<<< orphan*/  outq; } ;
struct sctp_stream {int dummy; } ;
struct sctp_sched_ops {int (* init_sid ) (struct sctp_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {struct sctp_stream_out_ext* ext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct sctp_stream*,int /*<<< orphan*/ ) ; 
 struct sctp_sched_ops* FUNC2 (struct sctp_stream*) ; 
 int FUNC3 (struct sctp_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct sctp_stream *stream, __u16 sid, gfp_t gfp)
{
	struct sctp_sched_ops *sched = FUNC2(stream);
	struct sctp_stream_out_ext *ext = FUNC1(stream, sid)->ext;

	FUNC0(&ext->outq);
	return sched->init_sid(stream, sid, gfp);
}