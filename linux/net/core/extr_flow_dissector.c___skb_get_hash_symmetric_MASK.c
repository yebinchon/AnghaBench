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
typedef  int /*<<< orphan*/  keys ;

/* Variables and functions */
 int /*<<< orphan*/  FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL ; 
 int /*<<< orphan*/  FUNC0 (struct flow_keys*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff const*,int /*<<< orphan*/ *,struct flow_keys*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flow_keys_dissector_symmetric ; 
 int /*<<< orphan*/  hashrnd ; 
 int /*<<< orphan*/  FUNC3 (struct flow_keys*,int /*<<< orphan*/ ,int) ; 

u32 FUNC4(const struct sk_buff *skb)
{
	struct flow_keys keys;

	FUNC1();

	FUNC3(&keys, 0, sizeof(keys));
	FUNC2(NULL, skb, &flow_keys_dissector_symmetric,
			   &keys, NULL, 0, 0, 0,
			   FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL);

	return FUNC0(&keys, &hashrnd);
}