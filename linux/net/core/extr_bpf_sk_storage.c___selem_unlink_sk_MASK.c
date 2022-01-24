#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_bpf_storage; int /*<<< orphan*/  sk_omem_alloc; } ;
struct bpf_sk_storage_map {int elem_size; size_t cache_idx; } ;
struct bpf_sk_storage_elem {int /*<<< orphan*/  snode; } ;
struct bpf_sk_storage {int /*<<< orphan*/ * cache; struct sock* sk; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {int /*<<< orphan*/  smap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct bpf_sk_storage_elem*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_sk_storage_elem*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 struct bpf_sk_storage_map* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct bpf_sk_storage *sk_storage,
			      struct bpf_sk_storage_elem *selem,
			      bool uncharge_omem)
{
	struct bpf_sk_storage_map *smap;
	bool free_sk_storage;
	struct sock *sk;

	smap = FUNC7(FUNC1(selem)->smap);
	sk = sk_storage->sk;

	/* All uncharging on sk->sk_omem_alloc must be done first.
	 * sk may be freed once the last selem is unlinked from sk_storage.
	 */
	if (uncharge_omem)
		FUNC2(smap->elem_size, &sk->sk_omem_alloc);

	free_sk_storage = FUNC4(&selem->snode,
						 &sk_storage->list);
	if (free_sk_storage) {
		FUNC2(sizeof(struct bpf_sk_storage), &sk->sk_omem_alloc);
		sk_storage->sk = NULL;
		/* After this RCU_INIT, sk may be freed and cannot be used */
		FUNC0(sk->sk_bpf_storage, NULL);

		/* sk_storage is not freed now.  sk_storage->lock is
		 * still held and raw_spin_unlock_bh(&sk_storage->lock)
		 * will be done by the caller.
		 *
		 * Although the unlock will be done under
		 * rcu_read_lock(),  it is more intutivie to
		 * read if kfree_rcu(sk_storage, rcu) is done
		 * after the raw_spin_unlock_bh(&sk_storage->lock).
		 *
		 * Hence, a "bool free_sk_storage" is returned
		 * to the caller which then calls the kfree_rcu()
		 * after unlock.
		 */
	}
	FUNC3(&selem->snode);
	if (FUNC6(sk_storage->cache[smap->cache_idx]) ==
	    FUNC1(selem))
		FUNC0(sk_storage->cache[smap->cache_idx], NULL);

	FUNC5(selem, rcu);

	return free_sk_storage;
}