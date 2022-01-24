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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int K_BKSPC ; 
 int K_ENTER ; 
 int K_ESC ; 
 int K_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int,int,int,int,int) ; 
 int SLtt_Screen_Cols ; 
 int SLtt_Screen_Rows ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  ui__lock ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int FUNC14(const char *title, const char *text, char *input,
			     const char *exit_msg, int delay_secs)
{
	int x, y, len, key;
	int max_len = 60, nr_lines = 0;
	static char buf[50];
	const char *t;

	t = text;
	while (1) {
		const char *sep = FUNC10(t, '\n');

		if (sep == NULL)
			sep = FUNC10(t, '\0');
		len = sep - t;
		if (max_len < len)
			max_len = len;
		++nr_lines;
		if (*sep == '\0')
			break;
		t = sep + 1;
	}

	FUNC8(&ui__lock);

	max_len += 2;
	nr_lines += 8;
	y = SLtt_Screen_Rows / 2 - nr_lines / 2;
	x = SLtt_Screen_Cols / 2 - max_len / 2;

	FUNC3(0);
	FUNC0(y, x++, nr_lines, max_len);
	if (title) {
		FUNC1(y, x + 1);
		FUNC6((char *)title);
	}
	FUNC1(++y, x);
	nr_lines -= 7;
	max_len -= 2;
	FUNC7((unsigned char *)text, y, x,
				   nr_lines, max_len, 1);
	y += nr_lines;
	len = 5;
	while (len--) {
		FUNC1(y + len - 1, x);
		FUNC5((char *)" ", max_len);
	}
	FUNC0(y++, x + 1, 3, max_len - 2);

	FUNC1(y + 3, x);
	FUNC5((char *)exit_msg, max_len);
	FUNC2();

	FUNC9(&ui__lock);

	x += 2;
	len = 0;
	key = FUNC12(delay_secs);
	while (key != K_TIMER && key != K_ENTER && key != K_ESC) {
		FUNC8(&ui__lock);

		if (key == K_BKSPC) {
			if (len == 0) {
				FUNC9(&ui__lock);
				goto next_key;
			}
			FUNC1(y, x + --len);
			FUNC4(' ');
		} else {
			buf[len] = key;
			FUNC1(y, x + len++);
			FUNC4(key);
		}
		FUNC2();

		FUNC9(&ui__lock);

		/* XXX more graceful overflow handling needed */
		if (len == sizeof(buf) - 1) {
			FUNC13("maximum size of symbol name reached!");
			key = K_ENTER;
			break;
		}
next_key:
		key = FUNC12(delay_secs);
	}

	buf[len] = '\0';
	FUNC11(input, buf, len+1);
	return key;
}