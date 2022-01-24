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
struct nfs42_seek_res {int /*<<< orphan*/  sr_offset; int /*<<< orphan*/  sr_eof; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  OP_SEEK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr, struct nfs42_seek_res *res)
{
	int status;
	__be32 *p;

	status = FUNC1(xdr, OP_SEEK);
	if (status)
		return status;

	p = FUNC4(xdr, 4 + 8);
	if (FUNC2(!p))
		return -EIO;

	res->sr_eof = FUNC0(p++);
	p = FUNC3(p, &res->sr_offset);
	return 0;
}