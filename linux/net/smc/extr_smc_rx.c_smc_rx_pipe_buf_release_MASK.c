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
struct sock {scalar_t__ sk_state; } ;
struct smc_spd_priv {int /*<<< orphan*/  len; struct smc_sock* smc; } ;
struct smc_connection {int /*<<< orphan*/  splice_pending; } ;
struct smc_sock {struct smc_connection conn; struct sock sk; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int /*<<< orphan*/  page; scalar_t__ private; } ;

/* Variables and functions */
 scalar_t__ SMC_APPFINCLOSEWAIT ; 
 scalar_t__ SMC_CLOSED ; 
 scalar_t__ SMC_PEERFINCLOSEWAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_spd_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(struct pipe_inode_info *pipe,
				    struct pipe_buffer *buf)
{
	struct smc_spd_priv *priv = (struct smc_spd_priv *)buf->private;
	struct smc_sock *smc = priv->smc;
	struct smc_connection *conn;
	struct sock *sk = &smc->sk;

	if (sk->sk_state == SMC_CLOSED ||
	    sk->sk_state == SMC_PEERFINCLOSEWAIT ||
	    sk->sk_state == SMC_APPFINCLOSEWAIT)
		goto out;
	conn = &smc->conn;
	FUNC2(sk);
	FUNC5(smc, priv->len);
	FUNC4(sk);
	if (FUNC0(priv->len, &conn->splice_pending))
		FUNC6(sk);
out:
	FUNC1(priv);
	FUNC3(buf->page);
	FUNC7(sk);
}