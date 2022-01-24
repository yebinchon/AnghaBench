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
union sctp_params {int /*<<< orphan*/  v; TYPE_1__* p; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_ERROR_DNS_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 
 struct sctp_chunk* FUNC2 (struct sctp_association const*,struct sctp_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct sctp_association *asoc,
				 union sctp_params param,
				 struct sctp_chunk *chunk,
				 struct sctp_chunk **errp)
{
	__u16 len = FUNC0(param.p->length);

	/* Processing of the HOST_NAME parameter will generate an
	 * ABORT.  If we've accumulated any non-fatal errors, they
	 * would be unrecognized parameters and we should not include
	 * them in the ABORT.
	 */
	if (*errp)
		FUNC1(*errp);

	*errp = FUNC2(asoc, chunk, SCTP_ERROR_DNS_FAILED,
				   param.v, len, 0);

	/* Stop processing this chunk. */
	return 0;
}