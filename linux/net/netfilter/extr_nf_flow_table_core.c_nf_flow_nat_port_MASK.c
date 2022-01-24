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
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, unsigned int thoff,
			    u8 protocol, __be16 port, __be16 new_port)
{
	switch (protocol) {
	case IPPROTO_TCP:
		if (FUNC0(skb, thoff, port, new_port) < 0)
			return NF_DROP;
		break;
	case IPPROTO_UDP:
		if (FUNC1(skb, thoff, port, new_port) < 0)
			return NF_DROP;
		break;
	}

	return 0;
}