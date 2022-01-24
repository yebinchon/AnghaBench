#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvp_record {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_2__ {int num_records; struct kvp_record* records; } ;

/* Variables and functions */
 TYPE_1__* kvp_file_info ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(int pool, int index, __u8 *key, int key_size,
				__u8 *value, int value_size)
{
	struct kvp_record *record;

	/*
	 * First update our in-memory database.
	 */
	FUNC0(pool);
	record = kvp_file_info[pool].records;

	if (index >= kvp_file_info[pool].num_records) {
		return 1;
	}

	FUNC1(key, record[index].key, key_size);
	FUNC1(value, record[index].value, value_size);
	return 0;
}