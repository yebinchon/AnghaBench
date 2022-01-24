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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct flow_keys {int dummy; } ;
typedef  int /*<<< orphan*/  siphash_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL ; 
 int /*<<< orphan*/  FUNC0 (struct flow_keys*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff const*,struct flow_keys*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC2(const struct sk_buff *skb,
				  struct flow_keys *keys,
				  const siphash_key_t *keyval)
{
	FUNC1(skb, keys,
				   FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL);

	return FUNC0(keys, keyval);
}