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
struct gssx_option_array {int /*<<< orphan*/ * data; scalar_t__ count; } ;
struct gssx_option {int dummy; } ;
typedef  int /*<<< orphan*/  dummy ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,struct gssx_option*) ; 
 int /*<<< orphan*/  FUNC2 (struct gssx_option*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr,
				struct gssx_option_array *oa)
{
	struct gssx_option dummy;
	u32 count, i;
	__be32 *p;

	p = FUNC4(xdr, 4);
	if (FUNC3(p == NULL))
		return -ENOSPC;
	count = FUNC0(p++);
	FUNC2(&dummy, 0, sizeof(dummy));
	for (i = 0; i < count; i++) {
		FUNC1(xdr, &dummy);
	}

	oa->count = 0;
	oa->data = NULL;
	return 0;
}