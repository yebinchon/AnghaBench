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
typedef  int /*<<< orphan*/  u16 ;
struct vsock_sock {int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  local_addr; } ;
struct vmci_transport_waiting_info {int dummy; } ;
struct vmci_handle {int dummy; } ;
struct sock {int dummy; } ;
typedef  enum vmci_transport_packet_type { ____Placeholder_vmci_transport_packet_type } vmci_transport_packet_type ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmci_transport_waiting_info*,int /*<<< orphan*/ ,struct vmci_handle) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vsock_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static int
FUNC3(struct sock *sk,
				enum vmci_transport_packet_type type,
				u64 size,
				u64 mode,
				struct vmci_transport_waiting_info *wait,
				u16 proto,
				struct vmci_handle handle)
{
	struct vsock_sock *vsk;

	vsk = FUNC2(sk);

	if (!FUNC1(&vsk->local_addr))
		return -EINVAL;

	if (!FUNC1(&vsk->remote_addr))
		return -EINVAL;

	return FUNC0(&vsk->local_addr,
						     &vsk->remote_addr,
						     type, size, mode,
						     wait, proto, handle);
}