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
struct nfs4_change_info {int /*<<< orphan*/  after; int /*<<< orphan*/  before; int /*<<< orphan*/  atomic; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr, struct nfs4_change_info *cinfo)
{
	__be32 *p;

	p = FUNC3(xdr, 20);
	if (FUNC1(!p))
		return -EIO;
	cinfo->atomic = FUNC0(p++);
	p = FUNC2(p, &cinfo->before);
	FUNC2(p, &cinfo->after);
	return 0;
}