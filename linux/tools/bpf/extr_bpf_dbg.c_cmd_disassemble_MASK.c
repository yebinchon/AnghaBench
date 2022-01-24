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
 int CMD_ERR ; 
 int CMD_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * bpf_image ; 
 unsigned long bpf_prog_len ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*) ; 
 unsigned long FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(char *line_string)
{
	bool single_line = false;
	unsigned long line;

	if (!FUNC2())
		return CMD_ERR;
	if (FUNC3(line_string) > 0 &&
	    (line = FUNC4(line_string, NULL, 10)) < bpf_prog_len)
		single_line = true;
	if (single_line)
		FUNC0(bpf_image[line], line);
	else
		FUNC1(bpf_image, bpf_prog_len);

	return CMD_OK;
}