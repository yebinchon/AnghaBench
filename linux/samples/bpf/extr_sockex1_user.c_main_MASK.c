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
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  prog_fd ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_SOCKET_FILTER ; 
 int IPPROTO_ICMP ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ATTACH_BPF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int*,long long*) ; 
 int FUNC2 (struct bpf_object*,char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,struct bpf_object**,int*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,long long,long long,long long) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 

int FUNC10(int ac, char **argv)
{
	struct bpf_object *obj;
	int map_fd, prog_fd;
	char filename[256];
	int i, sock;
	FILE *f;

	FUNC9(filename, sizeof(filename), "%s_kern.o", argv[0]);

	if (FUNC3(filename, BPF_PROG_TYPE_SOCKET_FILTER,
			  &obj, &prog_fd))
		return 1;

	map_fd = FUNC2(obj, "my_map");

	sock = FUNC4("lo");

	FUNC0(FUNC7(sock, SOL_SOCKET, SO_ATTACH_BPF, &prog_fd,
			  sizeof(prog_fd)) == 0);

	f = FUNC5("ping -4 -c5 localhost", "r");
	(void) f;

	for (i = 0; i < 5; i++) {
		long long tcp_cnt, udp_cnt, icmp_cnt;
		int key;

		key = IPPROTO_TCP;
		FUNC0(FUNC1(map_fd, &key, &tcp_cnt) == 0);

		key = IPPROTO_UDP;
		FUNC0(FUNC1(map_fd, &key, &udp_cnt) == 0);

		key = IPPROTO_ICMP;
		FUNC0(FUNC1(map_fd, &key, &icmp_cnt) == 0);

		FUNC6("TCP %lld UDP %lld ICMP %lld bytes\n",
		       tcp_cnt, udp_cnt, icmp_cnt);
		FUNC8(1);
	}

	return 0;
}