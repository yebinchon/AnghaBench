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
struct nlm_res {scalar_t__ status; } ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,struct nlm_res*) ; 
 int FUNC1 (struct xdr_stream*,scalar_t__*) ; 
 scalar_t__ nlm_lck_denied ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr,
				struct nlm_res *result)
{
	int error;

	error = FUNC1(xdr, &result->status);
	if (FUNC2(error))
		goto out;
	if (result->status == nlm_lck_denied)
		error = FUNC0(xdr, result);
out:
	return error;
}