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
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct bpf_map*) ; 
 struct socket* FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 

__attribute__((used)) static int FUNC3(struct bpf_map *map, void *key)
{
	struct socket *sock;
	int fd, err;

	fd = *(int *)key;
	sock = FUNC1(fd, &err);
	if (sock) {
		err = FUNC0(sock->sk, map);
		FUNC2(sock);
		return err;
	}

	return err;
}