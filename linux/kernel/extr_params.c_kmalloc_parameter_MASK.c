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
struct kmalloced_param {void* val; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct kmalloced_param* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmalloced_params ; 
 int /*<<< orphan*/  kmalloced_params_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC4(unsigned int size)
{
	struct kmalloced_param *p;

	p = FUNC0(sizeof(*p) + size, GFP_KERNEL);
	if (!p)
		return NULL;

	FUNC2(&kmalloced_params_lock);
	FUNC1(&p->list, &kmalloced_params);
	FUNC3(&kmalloced_params_lock);

	return p->val;
}