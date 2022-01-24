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
typedef  int /*<<< orphan*/  substring_t ;
struct nilfs_super_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_OPT_ARGS ; 
 int Opt_snapshot ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,struct nilfs_super_data*) ; 
 char* FUNC3 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC4(char *data, struct nilfs_super_data *sd)
{
	char *p, *options = data;
	substring_t args[MAX_OPT_ARGS];
	int token;
	int ret = 0;

	do {
		p = FUNC3(&options, ",");
		if (p != NULL && *p) {
			token = FUNC1(p, tokens, args);
			if (token == Opt_snapshot)
				ret = FUNC2(p, &args[0],
								  sd);
		}
		if (!options)
			break;
		FUNC0(options == data);
		*(options - 1) = ',';
	} while (!ret);
	return ret;
}