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
struct tls_context {scalar_t__ sk_destruct; int /*<<< orphan*/  list; struct net_device* netdev; int /*<<< orphan*/  refcount; } ;
struct sock {scalar_t__ sk_destruct; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tls_device_list ; 
 int /*<<< orphan*/  tls_device_lock ; 
 scalar_t__ tls_device_sk_destruct ; 

__attribute__((used)) static void FUNC5(struct tls_context *ctx, struct sock *sk,
			      struct net_device *netdev)
{
	if (sk->sk_destruct != tls_device_sk_destruct) {
		FUNC2(&ctx->refcount, 1);
		FUNC0(netdev);
		ctx->netdev = netdev;
		FUNC3(&tls_device_lock);
		FUNC1(&ctx->list, &tls_device_list);
		FUNC4(&tls_device_lock);

		ctx->sk_destruct = sk->sk_destruct;
		sk->sk_destruct = tls_device_sk_destruct;
	}
}