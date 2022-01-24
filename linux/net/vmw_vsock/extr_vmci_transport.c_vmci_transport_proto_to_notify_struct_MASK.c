#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct vsock_sock {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_5__ {TYPE_1__* notify_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* socket_init ) (struct sock*) ;} ;

/* Variables and functions */
 int VSOCK_PROTO_INVALID ; 
#define  VSOCK_PROTO_PKT_ON_NOTIFY 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 TYPE_3__* FUNC2 (struct vsock_sock*) ; 
 TYPE_1__ vmci_transport_notify_pkt_ops ; 
 TYPE_1__ vmci_transport_notify_pkt_q_state_ops ; 
 struct vsock_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static bool FUNC4(struct sock *sk,
						  u16 *proto,
						  bool old_pkt_proto)
{
	struct vsock_sock *vsk = FUNC3(sk);

	if (old_pkt_proto) {
		if (*proto != VSOCK_PROTO_INVALID) {
			FUNC0("Can't set both an old and new protocol\n");
			return false;
		}
		FUNC2(vsk)->notify_ops = &vmci_transport_notify_pkt_ops;
		goto exit;
	}

	switch (*proto) {
	case VSOCK_PROTO_PKT_ON_NOTIFY:
		FUNC2(vsk)->notify_ops =
			&vmci_transport_notify_pkt_q_state_ops;
		break;
	default:
		FUNC0("Unknown notify protocol version\n");
		return false;
	}

exit:
	FUNC2(vsk)->notify_ops->socket_init(sk);
	return true;
}