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
struct xdr_netobj {int dummy; } ;
struct kvec {int iov_len; } ;

/* Variables and functions */
 int GSS_SEQ_WIN ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct kvec*,int) ; 
 scalar_t__ FUNC1 (struct kvec*,struct xdr_netobj*) ; 

__attribute__((used)) static inline int
FUNC2(struct kvec *resv, size_t size_limit,
	       struct xdr_netobj *out_handle, struct xdr_netobj *out_token,
	       int major_status, int minor_status)
{
	if (resv->iov_len + 4 > size_limit)
		return -1;
	FUNC0(resv, RPC_SUCCESS);
	if (FUNC1(resv, out_handle))
		return -1;
	if (resv->iov_len + 3 * 4 > size_limit)
		return -1;
	FUNC0(resv, major_status);
	FUNC0(resv, minor_status);
	FUNC0(resv, GSS_SEQ_WIN);
	if (FUNC1(resv, out_token))
		return -1;
	return 0;
}