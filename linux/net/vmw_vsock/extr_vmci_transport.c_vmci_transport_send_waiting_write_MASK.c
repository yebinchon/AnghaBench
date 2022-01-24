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
struct vmci_transport_waiting_info {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  VMCI_TRANSPORT_PACKET_TYPE_WAITING_WRITE ; 
 int /*<<< orphan*/  VSOCK_PROTO_INVALID ; 
 int FUNC0 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmci_transport_waiting_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct sock *sk,
				      struct vmci_transport_waiting_info *wait)
{
	return FUNC0(
				sk, VMCI_TRANSPORT_PACKET_TYPE_WAITING_WRITE,
				0, 0, wait, VSOCK_PROTO_INVALID,
				VMCI_INVALID_HANDLE);
}