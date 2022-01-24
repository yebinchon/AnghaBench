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
struct nfs42_copy_res {void* synchronous; void* consecutive; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr,
				    struct nfs42_copy_res *res) {
	__be32 *p;

	p = FUNC2(xdr, 4 + 4);
	if (FUNC1(!p))
		return -EIO;

	res->consecutive = FUNC0(p++);
	res->synchronous = FUNC0(p++);
	return 0;
}