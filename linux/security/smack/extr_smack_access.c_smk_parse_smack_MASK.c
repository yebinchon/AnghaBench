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

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int SMK_LONGLABEL ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

char *FUNC4(const char *string, int len)
{
	char *smack;
	int i;

	if (len <= 0)
		len = FUNC2(string) + 1;

	/*
	 * Reserve a leading '-' as an indicator that
	 * this isn't a label, but an option to interfaces
	 * including /smack/cipso and /smack/cipso2
	 */
	if (string[0] == '-')
		return FUNC0(-EINVAL);

	for (i = 0; i < len; i++)
		if (string[i] > '~' || string[i] <= ' ' || string[i] == '/' ||
		    string[i] == '"' || string[i] == '\\' || string[i] == '\'')
			break;

	if (i == 0 || i >= SMK_LONGLABEL)
		return FUNC0(-EINVAL);

	smack = FUNC1(i + 1, GFP_NOFS);
	if (smack == NULL)
		return FUNC0(-ENOMEM);

	FUNC3(smack, string, i);

	return smack;
}