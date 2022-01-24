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
struct nfs_fsstat {int /*<<< orphan*/  afiles; int /*<<< orphan*/  ffiles; int /*<<< orphan*/  tfiles; int /*<<< orphan*/  abytes; int /*<<< orphan*/  fbytes; int /*<<< orphan*/  tbytes; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr,
			       struct nfs_fsstat *result)
{
	__be32 *p;

	p = FUNC2(xdr, 8 * 6 + 4);
	if (FUNC0(!p))
		return -EIO;
	p = FUNC1(p, &result->tbytes);
	p = FUNC1(p, &result->fbytes);
	p = FUNC1(p, &result->abytes);
	p = FUNC1(p, &result->tfiles);
	p = FUNC1(p, &result->ffiles);
	FUNC1(p, &result->afiles);
	/* ignore invarsec */
	return 0;
}