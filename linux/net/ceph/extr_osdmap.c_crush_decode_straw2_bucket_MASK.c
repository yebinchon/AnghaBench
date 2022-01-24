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
struct crush_bucket_straw2 {int /*<<< orphan*/ * item_weights; TYPE_1__ h; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  bad ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,void*) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void **p, void *end,
				      struct crush_bucket_straw2 *b)
{
	int j;
	FUNC2("crush_decode_straw2_bucket %p to %p\n", *p, end);
	b->item_weights = FUNC3(b->h.size, sizeof(u32), GFP_NOFS);
	if (b->item_weights == NULL)
		return -ENOMEM;
	FUNC1(p, end, b->h.size * sizeof(u32), bad);
	for (j = 0; j < b->h.size; j++)
		b->item_weights[j] = FUNC0(p);
	return 0;
bad:
	return -EINVAL;
}