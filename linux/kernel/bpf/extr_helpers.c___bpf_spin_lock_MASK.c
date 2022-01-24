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
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC3(struct bpf_spin_lock *lock)
{
	atomic_t *l = (void *)lock;

	FUNC0(sizeof(*l) != sizeof(*lock));
	do {
		FUNC1(l, !VAL);
	} while (FUNC2(l, 1));
}