#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb)
{
	/* RFC 2460 section 8.1 says that we SHOULD log
	 * this error. Well, it is reasonable.
	 */
	FUNC1("IPv6: udp checksum is 0 for [%pI6c]:%u->[%pI6c]:%u\n",
			    &FUNC0(skb)->saddr, FUNC2(FUNC3(skb)->source),
			    &FUNC0(skb)->daddr, FUNC2(FUNC3(skb)->dest));
}