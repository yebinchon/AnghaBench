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
struct TYPE_2__ {int tcpv_enabled; void* tcpv_minrtt; void* tcpv_rtt; scalar_t__ tcpv_rttcnt; } ;
union tcp_cc_info {TYPE_1__ vegas; } ;
typedef  int u32 ;
struct westwood {int /*<<< orphan*/  rtt_min; int /*<<< orphan*/  rtt; } ;
struct tcpvegas_info {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int INET_DIAG_VEGASINFO ; 
 struct westwood* FUNC0 (struct sock*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(struct sock *sk, u32 ext, int *attr,
				union tcp_cc_info *info)
{
	const struct westwood *ca = FUNC0(sk);

	if (ext & (1 << (INET_DIAG_VEGASINFO - 1))) {
		info->vegas.tcpv_enabled = 1;
		info->vegas.tcpv_rttcnt	= 0;
		info->vegas.tcpv_rtt	= FUNC1(ca->rtt);
		info->vegas.tcpv_minrtt	= FUNC1(ca->rtt_min);

		*attr = INET_DIAG_VEGASINFO;
		return sizeof(struct tcpvegas_info);
	}
	return 0;
}