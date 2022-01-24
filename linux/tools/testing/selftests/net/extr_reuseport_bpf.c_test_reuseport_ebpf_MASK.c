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
struct test_params {int recv_socks; int send_port_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct test_params,int*,int,int /*<<< orphan*/  (*) (int,int)) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (struct test_params,int*,int) ; 

__attribute__((used)) static void FUNC5(struct test_params p)
{
	int i, fd[p.recv_socks];

	FUNC3(stderr, "Testing EBPF mod %d...\n", p.recv_socks);
	FUNC1(p, fd, p.recv_socks, attach_ebpf);
	FUNC4(p, fd, p.recv_socks);

	p.send_port_min += p.recv_socks * 2;
	FUNC3(stderr, "Reprograming, testing mod %d...\n", p.recv_socks / 2);
	FUNC0(fd[0], p.recv_socks / 2);
	FUNC4(p, fd, p.recv_socks / 2);

	for (i = 0; i < p.recv_socks; ++i)
		FUNC2(fd[i]);
}