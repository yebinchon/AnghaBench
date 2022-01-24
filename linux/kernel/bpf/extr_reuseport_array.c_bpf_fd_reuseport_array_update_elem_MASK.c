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
typedef  int u64 ;
typedef  size_t u32 ;
struct socket {int /*<<< orphan*/  file; struct sock_reuseport* sk; } ;
struct sock_reuseport {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_user_data; int /*<<< orphan*/  sk_reuseport_cb; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_user_data; int /*<<< orphan*/  sk_reuseport_cb; } ;
struct reuseport_array {int /*<<< orphan*/ * ptrs; } ;
struct bpf_map {size_t max_entries; int value_size; } ;

/* Variables and functions */
 int BPF_EXIST ; 
 int E2BIG ; 
 int EINVAL ; 
 int S32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sock_reuseport* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sock_reuseport*) ; 
 struct sock_reuseport* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct reuseport_array* FUNC6 (struct bpf_map*) ; 
 int FUNC7 (struct reuseport_array*,struct sock_reuseport*,struct sock_reuseport*,struct sock_reuseport*,int) ; 
 int FUNC8 (struct sock_reuseport*) ; 
 int /*<<< orphan*/  reuseport_lock ; 
 struct socket* FUNC9 (int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct bpf_map *map, void *key,
				       void *value, u64 map_flags)
{
	struct reuseport_array *array = FUNC6(map);
	struct sock *free_osk = NULL, *osk, *nsk;
	struct sock_reuseport *reuse;
	u32 index = *(u32 *)key;
	struct socket *socket;
	int err, fd;

	if (map_flags > BPF_EXIST)
		return -EINVAL;

	if (index >= map->max_entries)
		return -E2BIG;

	if (map->value_size == sizeof(u64)) {
		u64 fd64 = *(u64 *)value;

		if (fd64 > S32_MAX)
			return -EINVAL;
		fd = fd64;
	} else {
		fd = *(int *)value;
	}

	socket = FUNC9(fd, &err);
	if (!socket)
		return err;

	nsk = socket->sk;
	if (!nsk) {
		err = -EINVAL;
		goto put_file;
	}

	/* Quick checks before taking reuseport_lock */
	err = FUNC7(array, nsk,
					   FUNC3(array->ptrs[index]),
					   FUNC3(nsk->sk_reuseport_cb),
					   map_flags);
	if (err)
		goto put_file;

	FUNC10(&reuseport_lock);
	/*
	 * Some of the checks only need reuseport_lock
	 * but it is done under sk_callback_lock also
	 * for simplicity reason.
	 */
	FUNC12(&nsk->sk_callback_lock);

	osk = FUNC5(array->ptrs[index],
					FUNC2(&reuseport_lock));
	reuse = FUNC5(nsk->sk_reuseport_cb,
					  FUNC2(&reuseport_lock));
	err = FUNC7(array, nsk, osk, reuse, map_flags);
	if (err)
		goto put_file_unlock;

	/* Ensure reuse->reuseport_id is set */
	err = FUNC8(reuse);
	if (err < 0)
		goto put_file_unlock;

	FUNC0(nsk->sk_user_data, &array->ptrs[index]);
	FUNC4(array->ptrs[index], nsk);
	free_osk = osk;
	err = 0;

put_file_unlock:
	FUNC13(&nsk->sk_callback_lock);

	if (free_osk) {
		FUNC12(&free_osk->sk_callback_lock);
		FUNC0(free_osk->sk_user_data, NULL);
		FUNC13(&free_osk->sk_callback_lock);
	}

	FUNC11(&reuseport_lock);
put_file:
	FUNC1(socket->file);
	return err;
}