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
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 struct kmem_cache* FUNC0 (struct kmem_cache*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

void FUNC4(struct kmem_cache *s, void *x)
{
	s = FUNC0(s, x);
	if (!s)
		return;
	FUNC1(s, FUNC3(x), x, NULL, 1, _RET_IP_);
	FUNC2(_RET_IP_, x);
}