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
struct vsock_sock {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int FUNC0 (struct vsock_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sock* FUNC3 (struct vsock_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct vsock_sock*) ; 

__attribute__((used)) static void FUNC5(struct vsock_sock *vsk)
{
	struct sock *sk = FUNC3(vsk);
	bool remove_sock;

	FUNC1(sk, SINGLE_DEPTH_NESTING);
	remove_sock = FUNC0(vsk);
	FUNC2(sk);
	if (remove_sock)
		FUNC4(vsk);
}