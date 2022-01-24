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
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct xdr_stream*,scalar_t__*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__* FUNC2 (struct xdr_stream*,int) ; 
 scalar_t__ xdr_zero ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr, u32 *length)
{
	u32 chunklen;
	bool first;
	__be32 *p;

	*length = 0;
	first = true;
	do {
		p = FUNC2(xdr, sizeof(*p));
		if (FUNC1(!p))
			return -EIO;
		if (*p == xdr_zero)
			break;
		if (!first)
			return -EIO;

		if (FUNC0(xdr, &chunklen))
			return -EIO;
		*length += chunklen;
		first = false;
	} while (true);
	return 0;
}