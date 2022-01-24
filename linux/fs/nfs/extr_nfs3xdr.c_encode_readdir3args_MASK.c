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
struct nfs3_readdirargs {int /*<<< orphan*/  count; int /*<<< orphan*/  verf; int /*<<< orphan*/  cookie; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ NFS3_COOKIEVERFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct xdr_stream *xdr,
				const struct nfs3_readdirargs *args)
{
	__be32 *p;

	FUNC1(xdr, args->fh);

	p = FUNC4(xdr, 8 + NFS3_COOKIEVERFSIZE + 4);
	p = FUNC2(p, args->cookie);
	p = FUNC3(p, args->verf);
	*p = FUNC0(args->count);
}