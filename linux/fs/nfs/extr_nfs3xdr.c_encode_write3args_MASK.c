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
struct nfs_pgio_args {int /*<<< orphan*/  count; int /*<<< orphan*/  pgbase; int /*<<< orphan*/  pages; int /*<<< orphan*/  stable; int /*<<< orphan*/  offset; int /*<<< orphan*/  fh; } ;
typedef  void* __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 void** FUNC2 (void**,int /*<<< orphan*/ ) ; 
 void** FUNC3 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct xdr_stream *xdr,
			      const struct nfs_pgio_args *args)
{
	__be32 *p;

	FUNC1(xdr, args->fh);

	p = FUNC3(xdr, 8 + 4 + 4 + 4);
	p = FUNC2(p, args->offset);
	*p++ = FUNC0(args->count);
	*p++ = FUNC0(args->stable);
	*p = FUNC0(args->count);
	FUNC4(xdr, args->pages, args->pgbase, args->count);
}