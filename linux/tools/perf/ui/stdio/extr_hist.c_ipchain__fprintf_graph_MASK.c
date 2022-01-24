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
typedef  int /*<<< orphan*/  u64 ;
struct callchain_node {int dummy; } ;
struct callchain_list {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bf ;
struct TYPE_2__ {scalar_t__ show_branchflag_count; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,char const*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (struct callchain_list*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct callchain_list*,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (struct callchain_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static size_t FUNC9(FILE *fp, struct callchain_node *node,
				     struct callchain_list *chain,
				     int depth, int depth_mask, int period,
				     u64 total_samples, int left_margin)
{
	int i;
	size_t ret = 0;
	char bf[1024], *alloc_str = NULL;
	char buf[64];
	const char *str;

	ret += FUNC1(fp, left_margin);
	for (i = 0; i < depth; i++) {
		if (depth_mask & (1 << i))
			ret += FUNC5(fp, "|");
		else
			ret += FUNC5(fp, " ");
		if (!period && i == depth - 1) {
			ret += FUNC5(fp, "--");
			ret += FUNC4(node, fp, total_samples);
			ret += FUNC5(fp, "--");
		} else
			ret += FUNC5(fp, "%s", "          ");
	}

	str = FUNC2(chain, bf, sizeof(bf), false);

	if (symbol_conf.show_branchflag_count) {
		FUNC3(chain, NULL,
						    buf, sizeof(buf));

		if (FUNC0(&alloc_str, "%s%s", str, buf) < 0)
			str = "Not enough memory!";
		else
			str = alloc_str;
	}

	FUNC7(str, fp);
	FUNC6('\n', fp);
	FUNC8(alloc_str);

	return ret;
}