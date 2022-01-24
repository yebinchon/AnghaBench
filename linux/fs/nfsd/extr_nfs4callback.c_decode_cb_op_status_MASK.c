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
typedef  enum nfs_cb_opnum4 { ____Placeholder_nfs_cb_opnum4 } nfs_cb_opnum4 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr,
			       enum nfs_cb_opnum4 expected, int *status)
{
	__be32 *p;
	u32 op;

	p = FUNC4(xdr, 4 + 4);
	if (FUNC3(p == NULL))
		goto out_overflow;
	op = FUNC0(p++);
	if (FUNC3(op != expected))
		goto out_unexpected;
	*status = FUNC2(FUNC0(p));
	return 0;
out_overflow:
	return -EIO;
out_unexpected:
	FUNC1("NFSD: Callback server returned operation %d but "
		"we issued a request for %d\n", op, expected);
	return -EIO;
}