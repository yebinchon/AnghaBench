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
struct bpf_program {char* section_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

const char *FUNC3(const struct bpf_program *prog, bool needs_copy)
{
	const char *title;

	title = prog->section_name;
	if (needs_copy) {
		title = FUNC2(title);
		if (!title) {
			FUNC1("failed to strdup program title\n");
			return FUNC0(-ENOMEM);
		}
	}

	return title;
}