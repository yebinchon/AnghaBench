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
struct sctp_errhdr {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCTP_ERROR_USER_ABORT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_chunk*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_chunk*,int /*<<< orphan*/ ,size_t) ; 
 struct sctp_chunk* FUNC6 (struct sctp_association const*,int /*<<< orphan*/ *,int) ; 

struct sctp_chunk *FUNC7(const struct sctp_association *asoc,
					struct msghdr *msg,
					size_t paylen)
{
	struct sctp_chunk *retval;
	void *payload = NULL;
	int err;

	retval = FUNC6(asoc, NULL,
				 sizeof(struct sctp_errhdr) + paylen);
	if (!retval)
		goto err_chunk;

	if (paylen) {
		/* Put the msg_iov together into payload.  */
		payload = FUNC1(paylen, GFP_KERNEL);
		if (!payload)
			goto err_payload;

		err = FUNC2(payload, msg, paylen);
		if (err < 0)
			goto err_copy;
	}

	FUNC5(retval, SCTP_ERROR_USER_ABORT, paylen);
	FUNC3(retval, paylen, payload);

	if (paylen)
		FUNC0(payload);

	return retval;

err_copy:
	FUNC0(payload);
err_payload:
	FUNC4(retval);
	retval = NULL;
err_chunk:
	return retval;
}