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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct tls_context {int /*<<< orphan*/  flags; int /*<<< orphan*/  netdev; } ;
struct sock {int dummy; } ;
struct net_device {TYPE_1__* tlsdev_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tls_dev_resync ) (struct net_device*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS_OFFLOAD_CTX_DIR_RX ; 
 int /*<<< orphan*/  TLS_RX_SYNC_RUNNING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tls_context *tls_ctx,
				 struct sock *sk, u32 seq, u8 *rcd_sn)
{
	struct net_device *netdev;

	if (FUNC1(FUNC4(TLS_RX_SYNC_RUNNING, &tls_ctx->flags)))
		return;
	netdev = FUNC0(tls_ctx->netdev);
	if (netdev)
		netdev->tlsdev_ops->tls_dev_resync(netdev, sk, seq, rcd_sn,
						   TLS_OFFLOAD_CTX_DIR_RX);
	FUNC2(TLS_RX_SYNC_RUNNING, &tls_ctx->flags);
}