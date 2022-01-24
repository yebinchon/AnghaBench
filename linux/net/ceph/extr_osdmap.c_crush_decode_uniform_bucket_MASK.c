#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int size; } ;
struct crush_bucket_uniform {int /*<<< orphan*/  item_weight; TYPE_1__ h; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  bad ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,void*) ; 

__attribute__((used)) static int FUNC3(void **p, void *end,
				       struct crush_bucket_uniform *b)
{
	FUNC2("crush_decode_uniform_bucket %p to %p\n", *p, end);
	FUNC1(p, end, (1+b->h.size) * sizeof(u32), bad);
	b->item_weight = FUNC0(p);
	return 0;
bad:
	return -EINVAL;
}