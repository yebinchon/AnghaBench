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
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/ * FUNC1 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32
FUNC2(struct xdr_stream *xdr, u32 bmval0, u32 bmval1, u32 bmval2)
{
	__be32 *p;

	if (bmval2) {
		p = FUNC1(xdr, 16);
		if (!p)
			goto out_resource;
		*p++ = FUNC0(3);
		*p++ = FUNC0(bmval0);
		*p++ = FUNC0(bmval1);
		*p++ = FUNC0(bmval2);
	} else if (bmval1) {
		p = FUNC1(xdr, 12);
		if (!p)
			goto out_resource;
		*p++ = FUNC0(2);
		*p++ = FUNC0(bmval0);
		*p++ = FUNC0(bmval1);
	} else {
		p = FUNC1(xdr, 8);
		if (!p)
			goto out_resource;
		*p++ = FUNC0(1);
		*p++ = FUNC0(bmval0);
	}

	return 0;
out_resource:
	return nfserr_resource;
}