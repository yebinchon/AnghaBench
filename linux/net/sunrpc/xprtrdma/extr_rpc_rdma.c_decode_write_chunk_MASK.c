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
typedef  scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct xdr_stream*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr, u32 *length)
{
	u32 segcount, seglength;
	__be32 *p;

	p = FUNC3(xdr, sizeof(*p));
	if (FUNC2(!p))
		return -EIO;

	*length = 0;
	segcount = FUNC0(p);
	while (segcount--) {
		if (FUNC1(xdr, &seglength))
			return -EIO;
		*length += seglength;
	}

	return 0;
}