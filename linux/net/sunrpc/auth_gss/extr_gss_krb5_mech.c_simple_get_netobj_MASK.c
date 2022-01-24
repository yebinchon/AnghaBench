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
struct xdr_netobj {unsigned int len; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  len ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  ENOMEM ; 
 void const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (void const*) ; 
 int /*<<< orphan*/ * FUNC2 (void const*,unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void const*,void const*,unsigned int*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static const void *
FUNC5(const void *p, const void *end, struct xdr_netobj *res)
{
	const void *q;
	unsigned int len;

	p = FUNC3(p, end, &len, sizeof(len));
	if (FUNC1(p))
		return p;
	q = (const void *)((const char *)p + len);
	if (FUNC4(q > end || q < p))
		return FUNC0(-EFAULT);
	res->data = FUNC2(p, len, GFP_NOFS);
	if (FUNC4(res->data == NULL))
		return FUNC0(-ENOMEM);
	res->len = len;
	return q;
}