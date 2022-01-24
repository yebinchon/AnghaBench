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
typedef  int /*<<< orphan*/  u64 ;
struct sock {int dummy; } ;
struct bpf_map {int value_size; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sock* FUNC2 (struct bpf_map*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

int FUNC4(struct bpf_map *map, void *key,
				       void *value)
{
	struct sock *sk;
	int err;

	if (map->value_size != sizeof(u64))
		return -ENOSPC;

	FUNC0();
	sk = FUNC2(map, key);
	if (sk) {
		*(u64 *)value = FUNC3(sk);
		err = 0;
	} else {
		err = -ENOENT;
	}
	FUNC1();

	return err;
}