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
struct sock {int dummy; } ;
struct ccid2_hc_tx_sock {int tx_seqbufc; int /*<<< orphan*/  tx_av_chunks; int /*<<< orphan*/ * tx_seqbuf; int /*<<< orphan*/  tx_rtotimer; } ;

/* Variables and functions */
 struct ccid2_hc_tx_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct ccid2_hc_tx_sock *hc = FUNC0(sk);
	int i;

	FUNC3(sk, &hc->tx_rtotimer);

	for (i = 0; i < hc->tx_seqbufc; i++)
		FUNC2(hc->tx_seqbuf[i]);
	hc->tx_seqbufc = 0;
	FUNC1(&hc->tx_av_chunks);
}