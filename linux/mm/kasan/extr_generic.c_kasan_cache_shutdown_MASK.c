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
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*) ; 

void FUNC2(struct kmem_cache *cache)
{
	if (!FUNC0(cache))
		FUNC1(cache);
}