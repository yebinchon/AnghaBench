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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int,int,int,int) ; 
 int SLtt_Screen_Cols ; 
 int SLtt_Screen_Rows ; 
 char* FUNC6 (char const*,char) ; 

void FUNC7(const char *title, const char *text, const char *exit_msg)
{
	int x, y;
	int max_len = 0, nr_lines = 0;
	const char *t;

	t = text;
	while (1) {
		const char *sep = FUNC6(t, '\n');
		int len;

		if (sep == NULL)
			sep = FUNC6(t, '\0');
		len = sep - t;
		if (max_len < len)
			max_len = len;
		++nr_lines;
		if (*sep == '\0')
			break;
		t = sep + 1;
	}

	max_len += 2;
	nr_lines += 2;
	if (exit_msg)
		nr_lines += 2;
	y = SLtt_Screen_Rows / 2 - nr_lines / 2,
	x = SLtt_Screen_Cols / 2 - max_len / 2;

	FUNC2(0);
	FUNC0(y, x++, nr_lines, max_len);
	if (title) {
		FUNC1(y, x + 1);
		FUNC4((char *)title);
	}
	FUNC1(++y, x);
	if (exit_msg)
		nr_lines -= 2;
	max_len -= 2;
	FUNC5((unsigned char *)text, y, x,
				   nr_lines, max_len, 1);
	if (exit_msg) {
		FUNC1(y + nr_lines - 2, x);
		FUNC3((char *)" ", max_len);
		FUNC1(y + nr_lines - 1, x);
		FUNC3((char *)exit_msg, max_len);
	}
}