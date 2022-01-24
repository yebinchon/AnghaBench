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
typedef  unsigned int u32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(__be32 *dst, __be32 *src,
					   unsigned int remaining)
{
	unsigned int i, nsegs;
	u32 seg_len;

	/* Write list discriminator */
	*dst++ = *src++;

	/* number of segments in this chunk */
	nsegs = FUNC1(src);
	*dst++ = *src++;

	for (i = nsegs; i; i--) {
		/* segment's RDMA handle */
		*dst++ = *src++;

		/* bytes returned in this segment */
		seg_len = FUNC0(*src);
		if (remaining >= seg_len) {
			/* entire segment was consumed */
			*dst = *src;
			remaining -= seg_len;
		} else {
			/* segment only partly filled */
			*dst = FUNC2(remaining);
			remaining = 0;
		}
		dst++; src++;

		/* segment's RDMA offset */
		*dst++ = *src++;
		*dst++ = *src++;
	}

	return nsegs;
}