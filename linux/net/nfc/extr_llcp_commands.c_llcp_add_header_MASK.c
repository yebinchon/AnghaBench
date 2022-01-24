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
typedef  int u8 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LLCP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC2(struct sk_buff *pdu,
				       u8 dsap, u8 ssap, u8 ptype)
{
	u8 header[2];

	FUNC0("ptype 0x%x dsap 0x%x ssap 0x%x\n", ptype, dsap, ssap);

	header[0] = (u8)((dsap << 2) | (ptype >> 2));
	header[1] = (u8)((ptype << 6) | ssap);

	FUNC0("header 0x%x 0x%x\n", header[0], header[1]);

	FUNC1(pdu, header, LLCP_HEADER_SIZE);

	return pdu;
}