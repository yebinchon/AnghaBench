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
struct xdr_stream {scalar_t__ p; scalar_t__ end; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct xdr_stream*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,size_t) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*) ; 

__be32 * FUNC5(struct xdr_stream *xdr, size_t nbytes)
{
	__be32 *p;

	if (FUNC2(nbytes == 0))
		return xdr->p;
	if (xdr->p == xdr->end && !FUNC4(xdr))
		goto out_overflow;
	p = FUNC0(xdr, nbytes);
	if (p != NULL)
		return p;
	return FUNC3(xdr, nbytes);
out_overflow:
	FUNC1(xdr, nbytes);
	return NULL;
}