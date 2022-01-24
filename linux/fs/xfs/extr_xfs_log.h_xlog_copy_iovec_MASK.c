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
typedef  int /*<<< orphan*/  uint ;
struct xfs_log_vec {int dummy; } ;
struct xfs_log_iovec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_log_vec*,struct xfs_log_iovec*,int) ; 
 void* FUNC2 (struct xfs_log_vec*,struct xfs_log_iovec**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void *
FUNC3(struct xfs_log_vec *lv, struct xfs_log_iovec **vecp,
		uint type, void *data, int len)
{
	void *buf;

	buf = FUNC2(lv, vecp, type);
	FUNC0(buf, data, len);
	FUNC1(lv, *vecp, len);
	return buf;
}