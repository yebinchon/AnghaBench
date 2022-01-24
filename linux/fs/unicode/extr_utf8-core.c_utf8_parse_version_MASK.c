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
typedef  int /*<<< orphan*/  version_string ;
typedef  int /*<<< orphan*/  substring_t ;
struct match_token {int member_0; char* member_1; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC1 (char*,struct match_token const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC3(const char *version, unsigned int *maj,
			      unsigned int *min, unsigned int *rev)
{
	substring_t args[3];
	char version_string[12];
	static const struct match_token token[] = {
		{1, "%d.%d.%d"},
		{0, NULL}
	};

	FUNC2(version_string, version, sizeof(version_string));

	if (FUNC1(version_string, token, args) != 1)
		return -EINVAL;

	if (FUNC0(&args[0], maj) || FUNC0(&args[1], min) ||
	    FUNC0(&args[2], rev))
		return -EINVAL;

	return 0;
}