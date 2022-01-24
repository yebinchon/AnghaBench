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
struct sw_flow_key {int dummy; } ;
struct sw_flow_id {struct sw_flow_key* unmasked_key; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sw_flow_key* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sw_flow_key*,struct sw_flow_key const*,int) ; 
 scalar_t__ FUNC2 (struct sw_flow_id*,struct nlattr const*,int) ; 

int FUNC3(struct sw_flow_id *sfid, const struct nlattr *ufid,
			   const struct sw_flow_key *key, bool log)
{
	struct sw_flow_key *new_key;

	if (FUNC2(sfid, ufid, log))
		return 0;

	/* If UFID was not provided, use unmasked key. */
	new_key = FUNC0(sizeof(*new_key), GFP_KERNEL);
	if (!new_key)
		return -ENOMEM;
	FUNC1(new_key, key, sizeof(*key));
	sfid->unmasked_key = new_key;

	return 0;
}