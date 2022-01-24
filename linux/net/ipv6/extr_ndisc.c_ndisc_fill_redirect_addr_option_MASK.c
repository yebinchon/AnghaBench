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
struct sk_buff {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDISC_REDIRECT ; 
 int /*<<< orphan*/  ND_OPT_TARGET_LL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline void FUNC2(struct sk_buff *skb,
						   void *ha,
						   const u8 *ops_data)
{
	FUNC0(skb, ND_OPT_TARGET_LL_ADDR, ha, NDISC_REDIRECT);
	FUNC1(skb->dev, skb, ops_data);
}