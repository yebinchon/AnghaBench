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
struct tcphdr {int doff; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TCPOLEN_SACK_BASE ; 
 int TCPOLEN_SACK_PERBLOCK ; 
 int TCPOLEN_TIMESTAMP ; 
 int TCPOLEN_TSTAMP_ALIGNED ; 
#define  TCPOPT_EOL 129 
#define  TCPOPT_NOP 128 
 int TCPOPT_SACK ; 
 int TCPOPT_TIMESTAMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (int) ; 
 unsigned char* FUNC4 (struct sk_buff const*,unsigned int,int,unsigned char*) ; 

__attribute__((used)) static void FUNC5(const struct sk_buff *skb, unsigned int dataoff,
                     const struct tcphdr *tcph, __u32 *sack)
{
	unsigned char buff[(15 * 4) - sizeof(struct tcphdr)];
	const unsigned char *ptr;
	int length = (tcph->doff*4) - sizeof(struct tcphdr);
	__u32 tmp;

	if (!length)
		return;

	ptr = FUNC4(skb, dataoff + sizeof(struct tcphdr),
				 length, buff);
	FUNC0(ptr == NULL);

	/* Fast path for timestamp-only option */
	if (length == TCPOLEN_TSTAMP_ALIGNED
	    && *(__be32 *)ptr == FUNC3((TCPOPT_NOP << 24)
				       | (TCPOPT_NOP << 16)
				       | (TCPOPT_TIMESTAMP << 8)
				       | TCPOLEN_TIMESTAMP))
		return;

	while (length > 0) {
		int opcode = *ptr++;
		int opsize, i;

		switch (opcode) {
		case TCPOPT_EOL:
			return;
		case TCPOPT_NOP:	/* Ref: RFC 793 section 3.1 */
			length--;
			continue;
		default:
			if (length < 2)
				return;
			opsize = *ptr++;
			if (opsize < 2) /* "silly options" */
				return;
			if (opsize > length)
				return;	/* don't parse partial options */

			if (opcode == TCPOPT_SACK
			    && opsize >= (TCPOLEN_SACK_BASE
					  + TCPOLEN_SACK_PERBLOCK)
			    && !((opsize - TCPOLEN_SACK_BASE)
				 % TCPOLEN_SACK_PERBLOCK)) {
				for (i = 0;
				     i < (opsize - TCPOLEN_SACK_BASE);
				     i += TCPOLEN_SACK_PERBLOCK) {
					tmp = FUNC2((__be32 *)(ptr+i)+1);

					if (FUNC1(tmp, *sack))
						*sack = tmp;
				}
				return;
			}
			ptr += opsize - 2;
			length -= opsize;
		}
	}
}