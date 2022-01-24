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
struct bucket_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rhashtable*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct bucket_table* FUNC1 (struct rhashtable*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bucket_table*) ; 
 int FUNC3 (struct rhashtable*,struct bucket_table*,struct bucket_table*) ; 

__attribute__((used)) static int FUNC4(struct rhashtable *ht,
				   struct bucket_table *old_tbl,
				   unsigned int size)
{
	struct bucket_table *new_tbl;
	int err;

	FUNC0(ht);

	new_tbl = FUNC1(ht, size, GFP_KERNEL);
	if (new_tbl == NULL)
		return -ENOMEM;

	err = FUNC3(ht, old_tbl, new_tbl);
	if (err)
		FUNC2(new_tbl);

	return err;
}