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
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct sctp_strreset_resp {void* result; void* response_seq; TYPE_1__ param_hdr; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_PARAM_RESET_RESPONSE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int,struct sctp_strreset_resp*) ; 
 struct sctp_chunk* FUNC3 (struct sctp_association const*,int) ; 

struct sctp_chunk *FUNC4(const struct sctp_association *asoc,
					   __u32 result, __u32 sn)
{
	struct sctp_strreset_resp resp;
	__u16 length = sizeof(resp);
	struct sctp_chunk *retval;

	retval = FUNC3(asoc, length);
	if (!retval)
		return NULL;

	resp.param_hdr.type = SCTP_PARAM_RESET_RESPONSE;
	resp.param_hdr.length = FUNC1(length);
	resp.response_seq = FUNC0(sn);
	resp.result = FUNC0(result);

	FUNC2(retval, sizeof(resp), &resp);

	return retval;
}