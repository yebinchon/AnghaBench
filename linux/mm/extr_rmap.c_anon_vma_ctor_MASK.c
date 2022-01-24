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
struct anon_vma {int /*<<< orphan*/  rb_root; int /*<<< orphan*/  refcount; int /*<<< orphan*/  rwsem; } ;

/* Variables and functions */
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *data)
{
	struct anon_vma *anon_vma = data;

	FUNC1(&anon_vma->rwsem);
	FUNC0(&anon_vma->refcount, 0);
	anon_vma->rb_root = RB_ROOT_CACHED;
}