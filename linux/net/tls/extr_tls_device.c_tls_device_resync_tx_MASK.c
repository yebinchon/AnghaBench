#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/ * rec_seq; } ;
struct tls_context {int /*<<< orphan*/  flags; struct net_device* netdev; TYPE_1__ tx; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* tlsdev_ops; } ;
struct TYPE_6__ {int eor; } ;
struct TYPE_5__ {int (* tls_dev_resync ) (struct net_device*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  TLS_OFFLOAD_CTX_DIR_TX ; 
 int /*<<< orphan*/  TLS_TX_SYNC_SCHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  device_offload_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct net_device*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, struct tls_context *tls_ctx,
				 u32 seq)
{
	struct net_device *netdev;
	struct sk_buff *skb;
	int err = 0;
	u8 *rcd_sn;

	skb = FUNC4(sk);
	if (skb)
		FUNC0(skb)->eor = 1;

	rcd_sn = tls_ctx->tx.rec_seq;

	FUNC2(&device_offload_lock);
	netdev = tls_ctx->netdev;
	if (netdev)
		err = netdev->tlsdev_ops->tls_dev_resync(netdev, sk, seq,
							 rcd_sn,
							 TLS_OFFLOAD_CTX_DIR_TX);
	FUNC5(&device_offload_lock);
	if (err)
		return;

	FUNC1(TLS_TX_SYNC_SCHED, &tls_ctx->flags);
}