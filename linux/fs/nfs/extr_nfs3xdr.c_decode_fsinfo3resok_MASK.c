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
struct xdr_stream {int dummy; } ;
struct nfs_fsinfo {scalar_t__ lease_time; int /*<<< orphan*/  time_delta; int /*<<< orphan*/  maxfilesize; void* dtpref; void* wtmult; void* wtpref; void* wtmax; void* rtmult; void* rtpref; void* rtmax; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr,
			       struct nfs_fsinfo *result)
{
	__be32 *p;

	p = FUNC4(xdr, 4 * 7 + 8 + 8 + 4);
	if (FUNC1(!p))
		return -EIO;
	result->rtmax  = FUNC0(p++);
	result->rtpref = FUNC0(p++);
	result->rtmult = FUNC0(p++);
	result->wtmax  = FUNC0(p++);
	result->wtpref = FUNC0(p++);
	result->wtmult = FUNC0(p++);
	result->dtpref = FUNC0(p++);
	p = FUNC3(p, &result->maxfilesize);
	FUNC2(p, &result->time_delta);

	/* ignore properties */
	result->lease_time = 0;
	return 0;
}