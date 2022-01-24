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
struct nfs_fh {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct xdr_stream*,struct nfs_fh*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__* FUNC2 (struct xdr_stream*,int) ; 
 scalar_t__ xdr_zero ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_fh*) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr, struct nfs_fh *fh)
{
	__be32 *p = FUNC2(xdr, 4);
	if (FUNC1(!p))
		return -EIO;
	if (*p != xdr_zero)
		return FUNC0(xdr, fh);
	FUNC3(fh);
	return 0;
}