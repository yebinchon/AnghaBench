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
struct seq_buf {int /*<<< orphan*/  size; } ;
struct path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (struct path const*,char*,size_t) ; 
 char* FUNC3 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_buf*,int) ; 
 size_t FUNC5 (struct seq_buf*,char**) ; 

int FUNC6(struct seq_buf *s, const struct path *path, const char *esc)
{
	char *buf;
	size_t size = FUNC5(s, &buf);
	int res = -1;

	FUNC1(s->size == 0);

	if (size) {
		char *p = FUNC2(path, buf, size);
		if (!FUNC0(p)) {
			char *end = FUNC3(buf, p, esc);
			if (end)
				res = end - buf;
		}
	}
	FUNC4(s, res);

	return res;
}