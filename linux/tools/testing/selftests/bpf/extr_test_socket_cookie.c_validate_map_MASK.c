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
struct socket_cookie {int cookie_value; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  addr ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (struct bpf_map*) ; 
 int FUNC1 (int,int*,struct socket_cookie*) ; 
 int FUNC2 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct bpf_map *map, int client_fd)
{
	__u32 cookie_expected_value;
	struct sockaddr_in6 addr;
	socklen_t len = sizeof(addr);
	struct socket_cookie val;
	int err = 0;
	int map_fd;

	if (!map) {
		FUNC3("Map not found in BPF object");
		goto err;
	}

	map_fd = FUNC0(map);

	err = FUNC1(map_fd, &client_fd, &val);

	err = FUNC2(client_fd, (struct sockaddr *)&addr, &len);
	if (err) {
		FUNC3("Can't get client local addr");
		goto out;
	}

	cookie_expected_value = (FUNC4(addr.sin6_port) << 8) | 0xFF;
	if (val.cookie_value != cookie_expected_value) {
		FUNC3("Unexpected value in map: %x != %x", val.cookie_value,
			cookie_expected_value);
		goto err;
	}

	goto out;
err:
	err = -1;
out:
	return err;
}