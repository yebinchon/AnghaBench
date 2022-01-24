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
struct rpc_rqst {int dummy; } ;
struct mountres {int /*<<< orphan*/  errno; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADHANDLE ; 
 int FUNC0 (struct xdr_stream*,struct mountres*) ; 
 int FUNC1 (struct xdr_stream*,struct mountres*) ; 
 int FUNC2 (struct xdr_stream*,struct mountres*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct rpc_rqst *req,
				 struct xdr_stream *xdr,
				 void *data)
{
	struct mountres *res = data;
	int status;

	status = FUNC2(xdr, res);
	if (FUNC3(status != 0 || res->errno != 0))
		return status;
	status = FUNC1(xdr, res);
	if (FUNC3(status != 0)) {
		res->errno = -EBADHANDLE;
		return 0;
	}
	return FUNC0(xdr, res);
}