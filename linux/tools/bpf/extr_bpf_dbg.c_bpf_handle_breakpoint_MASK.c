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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct sock_filter {int dummy; } ;
struct bpf_regs {size_t Pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_regs*,struct sock_filter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static bool FUNC3(struct bpf_regs *r, struct sock_filter *f,
				  uint8_t *pkt, uint32_t pkt_caplen,
				  uint32_t pkt_len)
{
	FUNC2("-- register dump --\n");
	FUNC0(r, &f[r->Pc]);
	FUNC2("-- packet dump --\n");
	FUNC1(pkt, pkt_caplen, pkt_len);
	FUNC2("(breakpoint)\n");
	return true;
}