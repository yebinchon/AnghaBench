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
struct perf_hpp_list {int dummy; } ;
struct perf_hpp {char* buf; int size; } ;
struct hist_entry {int dummy; } ;
struct c2c_hists {int /*<<< orphan*/  hists; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hist_entry*,struct perf_hpp*,struct perf_hpp_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct c2c_hists *c2c_hists,
			    struct hist_entry *he_cl,
			    struct perf_hpp_list *hpp_list,
			    FILE *out)
{
	char bf[1000];
	struct perf_hpp hpp = {
		.buf            = bf,
		.size           = 1000,
	};
	static bool once;

	if (!once) {
		FUNC3(&c2c_hists->hists, out);
		once = true;
	} else {
		FUNC1(out, "\n");
	}

	FUNC1(out, "  -------------------------------------------------------------\n");
	FUNC0(he_cl, &hpp, hpp_list);
	FUNC1(out, "%s\n", bf);
	FUNC1(out, "  -------------------------------------------------------------\n");

	FUNC2(&c2c_hists->hists, false, 0, 0, 0, out, false);
}