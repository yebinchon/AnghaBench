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
struct anon_vma {TYPE_1__* root; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  rwsem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  anon_vma_cachep ; 
 int /*<<< orphan*/  FUNC1 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct anon_vma *anon_vma)
{
	FUNC0(FUNC3(&anon_vma->refcount));

	/*
	 * Synchronize against page_lock_anon_vma_read() such that
	 * we can safely hold the lock without the anon_vma getting
	 * freed.
	 *
	 * Relies on the full mb implied by the atomic_dec_and_test() from
	 * put_anon_vma() against the acquire barrier implied by
	 * down_read_trylock() from page_lock_anon_vma_read(). This orders:
	 *
	 * page_lock_anon_vma_read()	VS	put_anon_vma()
	 *   down_read_trylock()		  atomic_dec_and_test()
	 *   LOCK				  MB
	 *   atomic_read()			  rwsem_is_locked()
	 *
	 * LOCK should suffice since the actual taking of the lock must
	 * happen _before_ what follows.
	 */
	FUNC5();
	if (FUNC6(&anon_vma->root->rwsem)) {
		FUNC1(anon_vma);
		FUNC2(anon_vma);
	}

	FUNC4(anon_vma_cachep, anon_vma);
}