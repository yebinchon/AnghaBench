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
typedef  enum nfs_stat { ____Placeholder_nfs_stat } nfs_stat ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NFS_OK ; 
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__* FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr, enum nfs_stat *status)
{
	__be32 *p;

	p = FUNC4(xdr, 4);
	if (FUNC3(!p))
		return -EIO;
	if (FUNC3(*p != FUNC1(NFS_OK)))
		goto out_status;
	*status = 0;
	return 0;
out_status:
	*status = FUNC0(p);
	FUNC2(xdr, (int)*status);
	return 0;
}