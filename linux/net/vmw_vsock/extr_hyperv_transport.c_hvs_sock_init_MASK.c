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
struct vsock_sock {struct hvsock* trans; } ;
struct sock {int /*<<< orphan*/  sk_rcvbuf; int /*<<< orphan*/  sk_sndbuf; } ;
struct hvsock {struct vsock_sock* vsk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RINGBUFFER_HVS_RCV_SIZE ; 
 int /*<<< orphan*/  RINGBUFFER_HVS_SND_SIZE ; 
 struct hvsock* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct sock* FUNC1 (struct vsock_sock*) ; 

__attribute__((used)) static int FUNC2(struct vsock_sock *vsk, struct vsock_sock *psk)
{
	struct hvsock *hvs;
	struct sock *sk = FUNC1(vsk);

	hvs = FUNC0(sizeof(*hvs), GFP_KERNEL);
	if (!hvs)
		return -ENOMEM;

	vsk->trans = hvs;
	hvs->vsk = vsk;
	sk->sk_sndbuf = RINGBUFFER_HVS_SND_SIZE;
	sk->sk_rcvbuf = RINGBUFFER_HVS_RCV_SIZE;
	return 0;
}