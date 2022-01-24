#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  xdp_flags; } ;
struct xsk_socket {int /*<<< orphan*/  prog_fd; TYPE_1__ config; int /*<<< orphan*/  ifindex; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xsk_socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct xsk_socket*) ; 
 int FUNC5 (struct xsk_socket*) ; 
 int FUNC6 (struct xsk_socket*) ; 
 int FUNC7 (struct xsk_socket*) ; 

__attribute__((used)) static int FUNC8(struct xsk_socket *xsk)
{
	__u32 prog_id = 0;
	int err;

	err = FUNC0(xsk->ifindex, &prog_id,
				  xsk->config.xdp_flags);
	if (err)
		return err;

	if (!prog_id) {
		err = FUNC3(xsk);
		if (err)
			return err;

		err = FUNC5(xsk);
		if (err) {
			FUNC4(xsk);
			return err;
		}
	} else {
		xsk->prog_fd = FUNC1(prog_id);
		err = FUNC6(xsk);
		if (err) {
			FUNC2(xsk->prog_fd);
			return err;
		}
	}

	err = FUNC7(xsk);
	if (err) {
		FUNC4(xsk);
		FUNC2(xsk->prog_fd);
		return err;
	}

	return 0;
}