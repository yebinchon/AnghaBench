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
struct rhashtable {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct rhashtable*) ; 
 struct rhashtable* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct rhashtable* mem_id_ht ; 
 int mem_id_init ; 
 int /*<<< orphan*/  mem_id_rht_params ; 
 int FUNC2 (struct rhashtable*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct rhashtable *rht;
	int ret;

	if (FUNC4(mem_id_init))
		return 0;

	rht = FUNC1(sizeof(*rht), GFP_KERNEL);
	if (!rht)
		return -ENOMEM;

	ret = FUNC2(rht, &mem_id_rht_params);
	if (ret < 0) {
		FUNC0(rht);
		return ret;
	}
	mem_id_ht = rht;
	FUNC3(); /* mutex lock should provide enough pairing */
	mem_id_init = true;

	return 0;
}