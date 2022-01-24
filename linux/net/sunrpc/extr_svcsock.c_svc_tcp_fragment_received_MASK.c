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
struct svc_sock {scalar_t__ sk_reclen; scalar_t__ sk_tcplen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct svc_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_sock*) ; 

__attribute__((used)) static void FUNC3(struct svc_sock *svsk)
{
	/* If we have more data, signal svc_xprt_enqueue() to try again */
	FUNC0("svc: TCP %s record (%d bytes)\n",
		FUNC1(svsk) ? "final" : "nonfinal",
		FUNC2(svsk));
	svsk->sk_tcplen = 0;
	svsk->sk_reclen = 0;
}