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
struct bpf_spin_lock {int dummy; } ;
struct bpf_map {int spin_lock_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_spin_lock*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_spin_lock*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_map*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct bpf_map *map, void *dst, void *src,
			   bool lock_src)
{
	struct bpf_spin_lock *lock;

	if (lock_src)
		lock = src + map->spin_lock_off;
	else
		lock = dst + map->spin_lock_off;
	FUNC3();
	FUNC0(lock);
	FUNC2(map, dst, src);
	FUNC1(lock);
	FUNC4();
}