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
struct rhash_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (struct rhashtable*,void const*,struct rhash_head*) ; 

void *FUNC4(struct rhashtable *ht, const void *key,
			     struct rhash_head *obj)
{
	void *data;

	do {
		FUNC1();
		data = FUNC3(ht, key, obj);
		FUNC2();
	} while (FUNC0(data) == -EAGAIN);

	return data;
}