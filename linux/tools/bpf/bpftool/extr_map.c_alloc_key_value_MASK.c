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
struct bpf_map_info {scalar_t__ value_size; scalar_t__ key_size; } ;

/* Variables and functions */
 void* FUNC0 (struct bpf_map_info*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct bpf_map_info *info, void **key, void **value)
{
	*key = NULL;
	*value = NULL;

	if (info->key_size) {
		*key = FUNC2(info->key_size);
		if (!*key) {
			FUNC3("key mem alloc failed");
			return -1;
		}
	}

	if (info->value_size) {
		*value = FUNC0(info);
		if (!*value) {
			FUNC3("value mem alloc failed");
			FUNC1(*key);
			*key = NULL;
			return -1;
		}
	}

	return 0;
}