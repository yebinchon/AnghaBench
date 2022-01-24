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
struct socket {int /*<<< orphan*/  sk; } ;
struct bpf_sk_storage_data {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_sk_storage_data*) ; 
 struct bpf_sk_storage_data* FUNC1 (int /*<<< orphan*/ ,struct bpf_map*,void*,int /*<<< orphan*/ ) ; 
 struct socket* FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 

__attribute__((used)) static int FUNC4(struct bpf_map *map, void *key,
					 void *value, u64 map_flags)
{
	struct bpf_sk_storage_data *sdata;
	struct socket *sock;
	int fd, err;

	fd = *(int *)key;
	sock = FUNC2(fd, &err);
	if (sock) {
		sdata = FUNC1(sock->sk, map, value, map_flags);
		FUNC3(sock);
		return FUNC0(sdata);
	}

	return err;
}