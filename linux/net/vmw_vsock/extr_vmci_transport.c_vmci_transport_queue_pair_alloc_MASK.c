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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct vmci_qp {int dummy; } ;
struct vmci_handle {int dummy; } ;

/* Variables and functions */
 int VMCI_ERROR_NO_ACCESS ; 
 int /*<<< orphan*/  VMCI_NO_PRIVILEGE_FLAGS ; 
 int /*<<< orphan*/  VMCI_PRIVILEGE_FLAG_TRUSTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct vmci_qp**,struct vmci_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct vmci_qp **qpair,
				struct vmci_handle *handle,
				u64 produce_size,
				u64 consume_size,
				u32 peer, u32 flags, bool trusted)
{
	int err = 0;

	if (trusted) {
		/* Try to allocate our queue pair as trusted. This will only
		 * work if vsock is running in the host.
		 */

		err = FUNC1(qpair, handle, produce_size,
				       consume_size,
				       peer, flags,
				       VMCI_PRIVILEGE_FLAG_TRUSTED);
		if (err != VMCI_ERROR_NO_ACCESS)
			goto out;

	}

	err = FUNC1(qpair, handle, produce_size, consume_size,
			       peer, flags, VMCI_NO_PRIVILEGE_FLAGS);
out:
	if (err < 0) {
		FUNC0("Could not attach to queue pair with %d\n",
		       err);
		err = FUNC2(err);
	}

	return err;
}