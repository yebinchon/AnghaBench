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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct tcphdr {int dummy; } ;

/* Variables and functions */
 int TCPOLEN_TIMESTAMP ; 
 int TCPOPT_EOL ; 
#define  TCPOPT_EXP 135 
#define  TCPOPT_FASTOPEN 134 
#define  TCPOPT_MD5SIG 133 
#define  TCPOPT_MSS 132 
 int TCPOPT_NOP ; 
#define  TCPOPT_SACK 131 
#define  TCPOPT_SACK_PERM 130 
#define  TCPOPT_TIMESTAMP 129 
#define  TCPOPT_WINDOW 128 
 int TCP_FLAG_ACK ; 
 int FUNC0 (struct tcphdr const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (struct tcphdr const*) ; 

__attribute__((used)) static bool FUNC5(const struct tcphdr *tcph,
			       u32 tstamp_new, u32 tsecr_new)
{
	/* inspired by tcp_parse_options in tcp_input.c */
	int length = FUNC0(tcph) - sizeof(struct tcphdr);
	const u8 *ptr = (const u8 *)(tcph + 1);
	u32 tstamp, tsecr;

	/* 3 reserved flags must be unset to avoid future breakage
	 * ACK must be set
	 * ECE/CWR are handled separately
	 * All other flags URG/PSH/RST/SYN/FIN must be unset
	 * 0x0FFF0000 = all TCP flags (confirm ACK=1, others zero)
	 * 0x00C00000 = CWR/ECE (handled separately)
	 * 0x0F3F0000 = 0x0FFF0000 & ~0x00C00000
	 */
	if (((FUNC4(tcph) &
	      FUNC2(0x0F3F0000)) != TCP_FLAG_ACK))
		return false;

	while (length > 0) {
		int opcode = *ptr++;
		int opsize;

		if (opcode == TCPOPT_EOL)
			break;
		if (opcode == TCPOPT_NOP) {
			length--;
			continue;
		}
		opsize = *ptr++;
		if (opsize < 2 || opsize > length)
			break;

		switch (opcode) {
		case TCPOPT_MD5SIG: /* doesn't influence state */
			break;

		case TCPOPT_SACK: /* stricter checking performed later */
			if (opsize % 8 != 2)
				return false;
			break;

		case TCPOPT_TIMESTAMP:
			/* only drop timestamps lower than new */
			if (opsize != TCPOLEN_TIMESTAMP)
				return false;
			tstamp = FUNC3(ptr);
			tsecr = FUNC3(ptr + 4);
			if (FUNC1(tstamp, tstamp_new) ||
			    FUNC1(tsecr, tsecr_new))
				return false;
			break;

		case TCPOPT_MSS:  /* these should only be set on SYN */
		case TCPOPT_WINDOW:
		case TCPOPT_SACK_PERM:
		case TCPOPT_FASTOPEN:
		case TCPOPT_EXP:
		default: /* don't drop if any unknown options are present */
			return false;
		}

		ptr += opsize - 2;
		length -= opsize;
	}

	return true;
}