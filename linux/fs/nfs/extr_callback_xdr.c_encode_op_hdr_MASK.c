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
typedef  int /*<<< orphan*/  uint32_t ;
struct xdr_stream {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4ERR_RESOURCE_HDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32 FUNC3(struct xdr_stream *xdr, uint32_t op, __be32 res)
{
	__be32 *p;
	
	p = FUNC2(xdr, 8);
	if (FUNC1(p == NULL))
		return FUNC0(NFS4ERR_RESOURCE_HDR);
	*p++ = FUNC0(op);
	*p = res;
	return 0;
}