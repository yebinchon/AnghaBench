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
struct TYPE_3__ {int end; } ;
struct sw_flow_match {TYPE_1__ range; struct sw_flow_key* key; } ;
struct sw_flow_key {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  unmasked_key; } ;
struct sw_flow {TYPE_2__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sw_flow_key*,int,int) ; 
 int FUNC2 (struct sw_flow_key*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static bool FUNC4(const struct sw_flow *flow,
				      const struct sw_flow_match *match)
{
	struct sw_flow_key *key = match->key;
	int key_start = FUNC2(key);
	int key_end = match->range.end;

	FUNC0(FUNC3(&flow->id));
	return FUNC1(flow->id.unmasked_key, key, key_start, key_end);
}