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
struct xsk_socket_info {int /*<<< orphan*/  xsk; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EBUSY ; 
 scalar_t__ ENOBUFS ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xsk_socket_info *xsk)
{
	int ret;

	ret = FUNC1(FUNC2(xsk->xsk), NULL, 0, MSG_DONTWAIT, NULL, 0);
	if (ret >= 0 || errno == ENOBUFS || errno == EAGAIN || errno == EBUSY)
		return;
	FUNC0(errno);
}