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
struct TYPE_2__ {int /*<<< orphan*/  wr_bytes_written; } ;
struct nfsd4_copy {int /*<<< orphan*/  nf_dst; int /*<<< orphan*/  nf_src; TYPE_1__ cp_res; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfsd4_copy*) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd4_copy*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static __be32 FUNC4(struct nfsd4_copy *copy, bool sync)
{
	__be32 status;
	ssize_t bytes;

	bytes = FUNC0(copy);
	/* for async copy, we ignore the error, client can always retry
	 * to get the error
	 */
	if (bytes < 0 && !copy->cp_res.wr_bytes_written)
		status = FUNC3(bytes);
	else {
		FUNC1(copy, sync);
		status = nfs_ok;
	}

	FUNC2(copy->nf_src);
	FUNC2(copy->nf_dst);
	return status;
}