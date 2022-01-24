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
struct nfs4_layoutreturn_args {int dummy; } ;
struct nfs4_flexfile_layoutreturn_args {int /*<<< orphan*/  errors; int /*<<< orphan*/  num_errors; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int E2BIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr,
				  const struct nfs4_layoutreturn_args *args,
				  const struct nfs4_flexfile_layoutreturn_args *ff_args)
{
	__be32 *start;

	start = FUNC3(xdr, 4);
	if (FUNC2(!start))
		return -E2BIG;

	*start = FUNC0(ff_args->num_errors);
	/* This assume we always return _ALL_ layouts */
	return FUNC1(xdr, &ff_args->errors);
}