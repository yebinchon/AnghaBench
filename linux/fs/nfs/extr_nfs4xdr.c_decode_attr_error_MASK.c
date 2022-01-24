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
typedef  unsigned int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 unsigned int FATTR4_WORD0_RDATTR_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr, uint32_t *bitmap, int32_t *res)
{
	__be32 *p;

	if (FUNC2(bitmap[0] & (FATTR4_WORD0_RDATTR_ERROR - 1U)))
		return -EIO;
	if (FUNC1(bitmap[0] & FATTR4_WORD0_RDATTR_ERROR)) {
		p = FUNC3(xdr, 4);
		if (FUNC2(!p))
			return -EIO;
		bitmap[0] &= ~FATTR4_WORD0_RDATTR_ERROR;
		*res = -FUNC0(p);
	}
	return 0;
}