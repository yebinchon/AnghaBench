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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct ceph_file_layout {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_file_layout*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct ceph_file_layout *layout, u64 off, u64 *plen,
			u64 *objnum, u64 *objoff, u64 *objlen)
{
	u64 orig_len = *plen;
	u32 xlen;

	/* object extent? */
	FUNC0(layout, off, orig_len, objnum,
					  objoff, &xlen);
	*objlen = xlen;
	if (*objlen < orig_len) {
		*plen = *objlen;
		FUNC1(" skipping last %llu, final file extent %llu~%llu\n",
		     orig_len - *plen, off, *plen);
	}

	FUNC1("calc_layout objnum=%llx %llu~%llu\n", *objnum, *objoff, *objlen);
	return 0;
}