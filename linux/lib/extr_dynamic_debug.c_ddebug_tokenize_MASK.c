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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC6(char *buf, char *words[], int maxwords)
{
	int nwords = 0;

	while (*buf) {
		char *end;

		/* Skip leading whitespace */
		buf = FUNC5(buf);
		if (!*buf)
			break;	/* oh, it was trailing whitespace */
		if (*buf == '#')
			break;	/* token starts comment, skip rest of line */

		/* find `end' of word, whitespace separated or quoted */
		if (*buf == '"' || *buf == '\'') {
			int quote = *buf++;
			for (end = buf; *end && *end != quote; end++)
				;
			if (!*end) {
				FUNC3("unclosed quote: %s\n", buf);
				return -EINVAL;	/* unclosed quote */
			}
		} else {
			for (end = buf; *end && !FUNC1(*end); end++)
				;
			FUNC0(end == buf);
		}

		/* `buf' is start of word, `end' is one past its end */
		if (nwords == maxwords) {
			FUNC3("too many words, legal max <=%d\n", maxwords);
			return -EINVAL;	/* ran out of words[] before bytes */
		}
		if (*end)
			*end++ = '\0';	/* terminate the word */
		words[nwords++] = buf;
		buf = end;
	}

	if (verbose) {
		int i;
		FUNC4("split into words:");
		for (i = 0; i < nwords; i++)
			FUNC2(" \"%s\"", words[i]);
		FUNC2("\n");
	}

	return nwords;
}