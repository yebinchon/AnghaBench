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
struct sock {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/ * sk_user_data; } ;
struct reuseport_array {int /*<<< orphan*/ * ptrs; } ;
struct bpf_map {size_t max_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct reuseport_array*) ; 
 struct sock* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct reuseport_array* FUNC5 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct bpf_map *map)
{
	struct reuseport_array *array = FUNC5(map);
	struct sock *sk;
	u32 i;

	FUNC6();

	/*
	 * ops->map_*_elem() will not be able to access this
	 * array now. Hence, this function only races with
	 * bpf_sk_reuseport_detach() which was triggerred by
	 * close() or disconnect().
	 *
	 * This function and bpf_sk_reuseport_detach() are
	 * both removing sk from "array".  Who removes it
	 * first does not matter.
	 *
	 * The only concern here is bpf_sk_reuseport_detach()
	 * may access "array" which is being freed here.
	 * bpf_sk_reuseport_detach() access this "array"
	 * through sk->sk_user_data _and_ with sk->sk_callback_lock
	 * held which is enough because this "array" is not freed
	 * until all sk->sk_user_data has stopped referencing this "array".
	 *
	 * Hence, due to the above, taking "reuseport_lock" is not
	 * needed here.
	 */

	/*
	 * Since reuseport_lock is not taken, sk is accessed under
	 * rcu_read_lock()
	 */
	FUNC3();
	for (i = 0; i < map->max_entries; i++) {
		sk = FUNC2(array->ptrs[i]);
		if (sk) {
			FUNC7(&sk->sk_callback_lock);
			/*
			 * No need for WRITE_ONCE(). At this point,
			 * no one is reading it without taking the
			 * sk->sk_callback_lock.
			 */
			sk->sk_user_data = NULL;
			FUNC8(&sk->sk_callback_lock);
			FUNC0(array->ptrs[i], NULL);
		}
	}
	FUNC4();

	/*
	 * Once reaching here, all sk->sk_user_data is not
	 * referenceing this "array".  "array" can be freed now.
	 */
	FUNC1(array);
}