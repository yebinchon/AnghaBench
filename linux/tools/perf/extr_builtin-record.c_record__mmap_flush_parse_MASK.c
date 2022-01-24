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
struct record_opts {int mmap_flush; int /*<<< orphan*/  mmap_pages; } ;
struct parse_tag {char tag; int mult; } ;
struct option {scalar_t__ value; } ;

/* Variables and functions */
 int MMAP_FLUSH_DEFAULT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,struct parse_tag*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct option *opt,
				    const char *str,
				    int unset)
{
	int flush_max;
	struct record_opts *opts = (struct record_opts *)opt->value;
	static struct parse_tag tags[] = {
			{ .tag  = 'B', .mult = 1       },
			{ .tag  = 'K', .mult = 1 << 10 },
			{ .tag  = 'M', .mult = 1 << 20 },
			{ .tag  = 'G', .mult = 1 << 30 },
			{ .tag  = 0 },
	};

	if (unset)
		return 0;

	if (str) {
		opts->mmap_flush = FUNC1(str, tags);
		if (opts->mmap_flush == (int)-1)
			opts->mmap_flush = FUNC2(str, NULL, 0);
	}

	if (!opts->mmap_flush)
		opts->mmap_flush = MMAP_FLUSH_DEFAULT;

	flush_max = FUNC0(opts->mmap_pages);
	flush_max /= 4;
	if (opts->mmap_flush > flush_max)
		opts->mmap_flush = flush_max;

	return 0;
}