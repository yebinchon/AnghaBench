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
typedef  int /*<<< orphan*/  vmci_datagram_recv_cb ;
typedef  int /*<<< orphan*/  u32 ;
struct vmci_handle {int dummy; } ;

/* Variables and functions */
 int VMCI_ERROR_NO_ACCESS ; 
 int /*<<< orphan*/  VMCI_PRIVILEGE_FLAG_TRUSTED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct vmci_handle*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct vmci_handle*) ; 

__attribute__((used)) static int
FUNC2(u32 resource_id,
				   u32 flags,
				   vmci_datagram_recv_cb recv_cb,
				   void *client_data,
				   struct vmci_handle *out_handle)
{
	int err = 0;

	/* Try to allocate our datagram handler as trusted. This will only work
	 * if vsock is running in the host.
	 */

	err = FUNC1(resource_id, flags,
					       VMCI_PRIVILEGE_FLAG_TRUSTED,
					       recv_cb,
					       client_data, out_handle);

	if (err == VMCI_ERROR_NO_ACCESS)
		err = FUNC0(resource_id, flags,
						  recv_cb, client_data,
						  out_handle);

	return err;
}