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
struct btf {int dummy; } ;
struct bpf_line_info {int /*<<< orphan*/  line_col; int /*<<< orphan*/  file_name_off; int /*<<< orphan*/  line_off; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct btf const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 char const* FUNC5 (char const*) ; 

void FUNC6(const struct btf *btf,
			 const struct bpf_line_info *linfo, bool linum)
{
	const char *line = FUNC2(btf, linfo->line_off);

	if (line)
		FUNC4(json_wtr, "src", FUNC5(line));

	if (linum) {
		const char *file = FUNC2(btf, linfo->file_name_off);

		if (file)
			FUNC4(json_wtr, "file", file);

		if (FUNC1(linfo->line_col))
			FUNC3(json_wtr, "line_num",
					FUNC1(linfo->line_col));

		if (FUNC0(linfo->line_col))
			FUNC3(json_wtr, "line_col",
					FUNC0(linfo->line_col));
	}
}