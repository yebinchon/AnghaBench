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
struct sctp_stream_out_ext {int dummy; } ;
struct sctp_stream {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {struct sctp_stream_out_ext* ext; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (struct sctp_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_stream_out_ext*) ; 
 struct sctp_stream_out_ext* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sctp_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct sctp_stream *stream, __u16 sid)
{
	struct sctp_stream_out_ext *soute;
	int ret;

	soute = FUNC2(sizeof(*soute), GFP_KERNEL);
	if (!soute)
		return -ENOMEM;
	FUNC0(stream, sid)->ext = soute;

	ret = FUNC3(stream, sid, GFP_KERNEL);
	if (ret) {
		FUNC1(FUNC0(stream, sid)->ext);
		FUNC0(stream, sid)->ext = NULL;
	}

	return ret;
}