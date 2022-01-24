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
struct objagg_obj {int dummy; } ;
struct objagg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct objagg*,struct objagg_obj*,int*) ; 
 int FUNC1 (struct objagg*,struct objagg_obj*) ; 
 int FUNC2 (struct objagg*,struct objagg_obj*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct objagg *objagg,
			   struct objagg_obj *objagg_obj)
{
	bool hint_found;
	int err;

	/* First, try to use hints if they are available and
	 * if they provide result.
	 */
	err = FUNC0(objagg, objagg_obj, &hint_found);
	if (err)
		return err;

	if (hint_found)
		return 0;

	/* Try to find if the object can be aggregated under an existing one. */
	err = FUNC1(objagg, objagg_obj);
	if (!err)
		return 0;
	/* If aggregation is not possible, make the object a root. */
	return FUNC2(objagg, objagg_obj, NULL);
}