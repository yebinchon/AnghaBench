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
typedef  int /*<<< orphan*/  u32 ;
struct xdr_stream {int dummy; } ;
struct rpcrdma_mr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rpcrdma_mr*) ; 
 int /*<<< orphan*/  xdr_one ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static int
FUNC4(struct xdr_stream *xdr, struct rpcrdma_mr *mr,
		    u32 position)
{
	__be32 *p;

	p = FUNC3(xdr, 6 * sizeof(*p));
	if (FUNC1(!p))
		return -EMSGSIZE;

	*p++ = xdr_one;			/* Item present */
	*p++ = FUNC0(position);
	FUNC2(p, mr);
	return 0;
}