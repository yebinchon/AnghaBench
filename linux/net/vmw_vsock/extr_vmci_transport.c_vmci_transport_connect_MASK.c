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
struct sock {void* sk_state; } ;
struct vsock_sock {int sent_request; struct sock sk; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_pair_size; } ;

/* Variables and functions */
 void* TCP_CLOSE ; 
 TYPE_1__* FUNC0 (struct vsock_sock*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int*) ; 
 int FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sock*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct vsock_sock *vsk)
{
	int err;
	bool old_pkt_proto = false;
	struct sock *sk = &vsk->sk;

	if (FUNC2(&old_pkt_proto) &&
		old_pkt_proto) {
		err = FUNC3(
			sk, FUNC0(vsk)->queue_pair_size);
		if (err < 0) {
			sk->sk_state = TCP_CLOSE;
			return err;
		}
	} else {
		int supported_proto_versions =
			FUNC1();
		err = FUNC4(
				sk, FUNC0(vsk)->queue_pair_size,
				supported_proto_versions);
		if (err < 0) {
			sk->sk_state = TCP_CLOSE;
			return err;
		}

		vsk->sent_request = true;
	}

	return err;
}