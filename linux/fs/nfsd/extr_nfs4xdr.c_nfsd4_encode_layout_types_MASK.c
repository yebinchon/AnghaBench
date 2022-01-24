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
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned long LAYOUT_NFSV4_1_FILES ; 
 unsigned long LAYOUT_TYPE_MAX ; 
 void* FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static inline __be32
FUNC3(struct xdr_stream *xdr, u32 layout_types)
{
	__be32		*p;
	unsigned long	i = FUNC1(layout_types);

	p = FUNC2(xdr, 4 + 4 * i);
	if (!p)
		return nfserr_resource;

	*p++ = FUNC0(i);

	for (i = LAYOUT_NFSV4_1_FILES; i < LAYOUT_TYPE_MAX; ++i)
		if (layout_types & (1 << i))
			*p++ = FUNC0(i);

	return 0;
}