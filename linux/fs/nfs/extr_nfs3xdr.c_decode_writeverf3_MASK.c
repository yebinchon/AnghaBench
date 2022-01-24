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
struct nfs_write_verifier {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NFS3_WRITEVERFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr, struct nfs_write_verifier *verifier)
{
	__be32 *p;

	p = FUNC2(xdr, NFS3_WRITEVERFSIZE);
	if (FUNC1(!p))
		return -EIO;
	FUNC0(verifier->data, p, NFS3_WRITEVERFSIZE);
	return 0;
}