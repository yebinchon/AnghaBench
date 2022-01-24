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
struct bpf_map_info {int key_size; int value_size; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int,char*) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 unsigned int FUNC4 (int,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC5(struct bpf_map_info *info, unsigned char *key,
			      unsigned char *value)
{
	if (!FUNC2(info->type)) {
		bool single_line, break_names;

		break_names = info->key_size > 16 || info->value_size > 16;
		single_line = info->key_size + info->value_size <= 24 &&
			!break_names;

		if (info->key_size) {
			FUNC3("key:%c", break_names ? '\n' : ' ');
			FUNC0(stdout, key, info->key_size, " ");

			FUNC3(single_line ? "  " : "\n");
		}

		if (info->value_size) {
			FUNC3("value:%c", break_names ? '\n' : ' ');
			FUNC0(stdout, value, info->value_size, " ");
		}

		FUNC3("\n");
	} else {
		unsigned int i, n, step;

		n = FUNC1();
		step = FUNC4(info->value_size, 8);

		if (info->key_size) {
			FUNC3("key:\n");
			FUNC0(stdout, key, info->key_size, " ");
			FUNC3("\n");
		}
		if (info->value_size) {
			for (i = 0; i < n; i++) {
				FUNC3("value (CPU %02d):%c",
				       i, info->value_size > 16 ? '\n' : ' ');
				FUNC0(stdout, value + i * step,
					   info->value_size, " ");
				FUNC3("\n");
			}
		}
	}
}