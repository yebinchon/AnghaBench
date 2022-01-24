#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct nfs_pgio_res {int count; TYPE_1__* verf; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {void* committed; int /*<<< orphan*/  verifier; } ;

/* Variables and functions */
 int EIO ; 
 void* NFS_FILE_SYNC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr,
			      struct nfs_pgio_res *result)
{
	__be32 *p;

	p = FUNC4(xdr, 4 + 4);
	if (FUNC3(!p))
		return -EIO;
	result->count = FUNC0(p++);
	result->verf->committed = FUNC0(p++);
	if (FUNC3(result->verf->committed > NFS_FILE_SYNC))
		goto out_badvalue;
	if (FUNC1(xdr, &result->verf->verifier))
		return -EIO;
	return result->count;
out_badvalue:
	FUNC2("NFS: bad stable_how value: %u\n", result->verf->committed);
	return -EIO;
}