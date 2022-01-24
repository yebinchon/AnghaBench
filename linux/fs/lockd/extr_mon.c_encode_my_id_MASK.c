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
struct nsm_args {int /*<<< orphan*/  proc; int /*<<< orphan*/  vers; int /*<<< orphan*/  prog; int /*<<< orphan*/  nodename; } ;
typedef  void* __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 void** FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC3(struct xdr_stream *xdr, const struct nsm_args *argp)
{
	__be32 *p;

	FUNC1(xdr, argp->nodename);
	p = FUNC2(xdr, 4 + 4 + 4);
	*p++ = FUNC0(argp->prog);
	*p++ = FUNC0(argp->vers);
	*p = FUNC0(argp->proc);
}