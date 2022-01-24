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
struct nfs_commitargs {int /*<<< orphan*/  count; int /*<<< orphan*/  offset; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr,
			       const struct nfs_commitargs *args)
{
	__be32 *p;

	FUNC1(xdr, args->fh);

	p = FUNC3(xdr, 8 + 4);
	p = FUNC2(p, args->offset);
	*p = FUNC0(args->count);
}