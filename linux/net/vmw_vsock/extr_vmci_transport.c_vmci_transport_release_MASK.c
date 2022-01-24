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
struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dg_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct vsock_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct vsock_sock*) ; 

__attribute__((used)) static void FUNC4(struct vsock_sock *vsk)
{
	FUNC3(vsk);

	if (!FUNC1(FUNC2(vsk)->dg_handle)) {
		FUNC0(FUNC2(vsk)->dg_handle);
		FUNC2(vsk)->dg_handle = VMCI_INVALID_HANDLE;
	}
}