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
typedef  size_t u32 ;
struct sock {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_user_data; } ;
struct reuseport_array {int /*<<< orphan*/ * ptrs; } ;
struct bpf_map {size_t max_entries; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sock* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct reuseport_array* FUNC5 (struct bpf_map*) ; 
 int /*<<< orphan*/  reuseport_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct bpf_map *map, void *key)
{
	struct reuseport_array *array = FUNC5(map);
	u32 index = *(u32 *)key;
	struct sock *sk;
	int err;

	if (index >= map->max_entries)
		return -E2BIG;

	if (!FUNC3(array->ptrs[index]))
		return -ENOENT;

	FUNC6(&reuseport_lock);

	sk = FUNC4(array->ptrs[index],
				       FUNC2(&reuseport_lock));
	if (sk) {
		FUNC8(&sk->sk_callback_lock);
		FUNC1(sk->sk_user_data, NULL);
		FUNC0(array->ptrs[index], NULL);
		FUNC9(&sk->sk_callback_lock);
		err = 0;
	} else {
		err = -ENOENT;
	}

	FUNC7(&reuseport_lock);

	return err;
}