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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct xdr_stream*,void**,size_t) ; 

ssize_t FUNC2(struct xdr_stream *xdr, void *ptr, size_t size)
{
	ssize_t ret;
	void *p;

	ret = FUNC1(xdr, &p, size);
	if (ret <= 0)
		return ret;
	FUNC0(ptr, p, ret);
	return ret;
}