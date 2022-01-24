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
struct socket {int /*<<< orphan*/  sk; } ;
struct bpf_sk_storage_data {void* data; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 struct bpf_sk_storage_data* FUNC1 (int /*<<< orphan*/ ,struct bpf_map*,int) ; 
 struct socket* FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 

__attribute__((used)) static void *FUNC4(struct bpf_map *map, void *key)
{
	struct bpf_sk_storage_data *sdata;
	struct socket *sock;
	int fd, err;

	fd = *(int *)key;
	sock = FUNC2(fd, &err);
	if (sock) {
		sdata = FUNC1(sock->sk, map, true);
		FUNC3(sock);
		return sdata ? sdata->data : NULL;
	}

	return FUNC0(err);
}