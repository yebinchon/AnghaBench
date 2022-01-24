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
struct stat {int dummy; } ;
struct FTW {int level; } ;

/* Variables and functions */
 int FTW_F ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  save_arch_std_events ; 

__attribute__((used)) static int FUNC2(const char *fpath, const struct stat *sb,
				int typeflag, struct FTW *ftwbuf)
{
	int level = ftwbuf->level;
	int is_file = typeflag == FTW_F;

	if (level == 1 && is_file && FUNC0(fpath))
		return FUNC1(fpath, save_arch_std_events, (void *)sb);

	return 0;
}