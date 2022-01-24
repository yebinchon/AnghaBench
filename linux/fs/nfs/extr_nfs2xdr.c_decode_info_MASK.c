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
struct nfs2_fsstat {void* bavail; void* bfree; void* blocks; void* bsize; void* tsize; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int NFS_info_sz ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr, struct nfs2_fsstat *result)
{
	__be32 *p;

	p = FUNC2(xdr, NFS_info_sz << 2);
	if (FUNC1(!p))
		return -EIO;
	result->tsize  = FUNC0(p++);
	result->bsize  = FUNC0(p++);
	result->blocks = FUNC0(p++);
	result->bfree  = FUNC0(p++);
	result->bavail = FUNC0(p);
	return 0;
}