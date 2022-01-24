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
struct inet_bind_bucket {int /*<<< orphan*/  node; int /*<<< orphan*/  owners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*,struct inet_bind_bucket*) ; 

void FUNC3(struct kmem_cache *cachep, struct inet_bind_bucket *tb)
{
	if (FUNC1(&tb->owners)) {
		FUNC0(&tb->node);
		FUNC2(cachep, tb);
	}
}