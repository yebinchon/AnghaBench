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
typedef  size_t u32 ;
struct batadv_hashtable {size_t size; int /*<<< orphan*/  generation; int /*<<< orphan*/ * list_locks; int /*<<< orphan*/ * table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct batadv_hashtable *hash)
{
	u32 i;

	for (i = 0; i < hash->size; i++) {
		FUNC0(&hash->table[i]);
		FUNC2(&hash->list_locks[i]);
	}

	FUNC1(&hash->generation, 0);
}