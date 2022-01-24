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
struct xsk_socket {int xsks_map_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_MAP_TYPE_XSKMAP ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xsk_socket*) ; 

__attribute__((used)) static int FUNC2(struct xsk_socket *xsk)
{
	int max_queues;
	int fd;

	max_queues = FUNC1(xsk);
	if (max_queues < 0)
		return max_queues;

	fd = FUNC0(BPF_MAP_TYPE_XSKMAP, "xsks_map",
				 sizeof(int), sizeof(int), max_queues, 0);
	if (fd < 0)
		return fd;

	xsk->xsks_map_fd = fd;

	return 0;
}