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
typedef  scalar_t__ u32 ;
struct vsock_sock {scalar_t__ cached_peer; int cached_peer_allow_dgram; } ;

/* Variables and functions */
 scalar_t__ VMADDR_CID_HYPERVISOR ; 
 int VMCI_PRIVILEGE_FLAG_RESTRICTED ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vsock_sock*,scalar_t__) ; 

__attribute__((used)) static bool FUNC2(struct vsock_sock *vsock, u32 peer_cid)
{
	if (VMADDR_CID_HYPERVISOR == peer_cid)
		return true;

	if (vsock->cached_peer != peer_cid) {
		vsock->cached_peer = peer_cid;
		if (!FUNC1(vsock, peer_cid) &&
		    (FUNC0(peer_cid) &
		     VMCI_PRIVILEGE_FLAG_RESTRICTED)) {
			vsock->cached_peer_allow_dgram = false;
		} else {
			vsock->cached_peer_allow_dgram = true;
		}
	}

	return vsock->cached_peer_allow_dgram;
}