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

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_inval ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 *FUNC6(void **p, void *end, u32 *plen)
{
	u32 *a = NULL;
	u32 len;
	int ret;

	FUNC2(p, end, len, e_inval);
	if (len) {
		u32 i;

		a = FUNC5(len, sizeof(u32), GFP_NOIO);
		if (!a) {
			ret = -ENOMEM;
			goto fail;
		}

		FUNC3(p, end, len * sizeof(u32), e_inval);
		for (i = 0; i < len; i++)
			a[i] = FUNC1(p);
	}

	*plen = len;
	return a;

e_inval:
	ret = -EINVAL;
fail:
	FUNC4(a);
	return FUNC0(ret);
}