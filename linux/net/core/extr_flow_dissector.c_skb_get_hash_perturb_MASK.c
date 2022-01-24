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
struct sk_buff {int dummy; } ;
struct flow_keys {int dummy; } ;
typedef  int /*<<< orphan*/  siphash_key_t ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff const*,struct flow_keys*,int /*<<< orphan*/  const*) ; 

__u32 FUNC1(const struct sk_buff *skb,
			   const siphash_key_t *perturb)
{
	struct flow_keys keys;

	return FUNC0(skb, &keys, perturb);
}