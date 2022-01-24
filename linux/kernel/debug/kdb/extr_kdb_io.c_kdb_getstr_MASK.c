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
 int /*<<< orphan*/  CMD_BUFLEN ; 
 int kdb_nextline ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char const* kdb_prompt_str ; 
 char* FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 

char *FUNC3(char *buffer, size_t bufsize, const char *prompt)
{
	if (prompt && kdb_prompt_str != prompt)
		FUNC2(kdb_prompt_str, prompt, CMD_BUFLEN);
	FUNC0(kdb_prompt_str);
	kdb_nextline = 1;	/* Prompt and input resets line number */
	return FUNC1(buffer, bufsize);
}