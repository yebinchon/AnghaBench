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
struct bpf_sk_storage_elem {int /*<<< orphan*/  sk_storage; } ;
struct bpf_sk_storage {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_sk_storage*,struct bpf_sk_storage_elem*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_sk_storage*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 struct bpf_sk_storage* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_sk_storage_elem*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct bpf_sk_storage_elem *selem)
{
	struct bpf_sk_storage *sk_storage;
	bool free_sk_storage = false;

	if (FUNC7(!FUNC6(selem)))
		/* selem has already been unlinked from sk */
		return;

	sk_storage = FUNC5(selem->sk_storage);
	FUNC3(&sk_storage->lock);
	if (FUNC2(FUNC6(selem)))
		free_sk_storage = FUNC0(sk_storage, selem, true);
	FUNC4(&sk_storage->lock);

	if (free_sk_storage)
		FUNC1(sk_storage, rcu);
}