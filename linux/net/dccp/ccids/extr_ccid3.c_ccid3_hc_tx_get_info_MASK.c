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
struct tcp_info {int /*<<< orphan*/  tcpi_rtt; int /*<<< orphan*/  tcpi_rto; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_rtt; int /*<<< orphan*/  tx_t_rto; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sock*) ; 

__attribute__((used)) static void FUNC1(struct sock *sk, struct tcp_info *info)
{
	info->tcpi_rto = FUNC0(sk)->tx_t_rto;
	info->tcpi_rtt = FUNC0(sk)->tx_rtt;
}