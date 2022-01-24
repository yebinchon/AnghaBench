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

/* Variables and functions */
 int /*<<< orphan*/  AF_VSOCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * transport ; 
 int /*<<< orphan*/  vsock_device ; 
 int /*<<< orphan*/  vsock_proto ; 
 int /*<<< orphan*/  vsock_register_mutex ; 

void FUNC6(void)
{
	FUNC2(&vsock_register_mutex);

	FUNC1(&vsock_device);
	FUNC5(AF_VSOCK);
	FUNC4(&vsock_proto);

	/* We do not want the assignment below re-ordered. */
	FUNC0();
	transport = NULL;

	FUNC3(&vsock_register_mutex);
}