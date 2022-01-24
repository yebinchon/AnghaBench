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
struct bpf_map_info {int key_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(struct bpf_map_info *info, unsigned char *key,
			      const char *error_msg)
{
	int msg_size = FUNC2(error_msg);
	bool single_line, break_names;

	break_names = info->key_size > 16 || msg_size > 16;
	single_line = info->key_size + msg_size <= 24 && !break_names;

	FUNC1("key:%c", break_names ? '\n' : ' ');
	FUNC0(stdout, key, info->key_size, " ");

	FUNC1(single_line ? "  " : "\n");

	FUNC1("value:%c%s", break_names ? '\n' : ' ', error_msg);

	FUNC1("\n");
}