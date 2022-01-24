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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct display_info {char type; int size; } ;

/* Variables and functions */
 int const FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,int) ; 

__attribute__((used)) static int FUNC5(struct display_info *disp, const char *data, int len)
{
	int i, size;
	const uint8_t *p = (const uint8_t *)data;
	const char *s;
	int value;
	int is_string;
	char fmt[3];

	/* no data, don't print */
	if (len == 0)
		return 0;

	is_string = (disp->type) == 's' ||
		(!disp->type && FUNC4(data, len));
	if (is_string) {
		if (data[len - 1] != '\0') {
			FUNC1(stderr, "Unterminated string\n");
			return -1;
		}
		for (s = data; s - data < len; s += FUNC3(s) + 1) {
			if (s != data)
				FUNC2(" ");
			FUNC2("%s", (const char *)s);
		}
		return 0;
	}
	size = disp->size;
	if (size == -1) {
		size = (len % 4) == 0 ? 4 : 1;
	} else if (len % size) {
		FUNC1(stderr, "Property length must be a multiple of "
				"selected data size\n");
		return -1;
	}
	fmt[0] = '%';
	fmt[1] = disp->type ? disp->type : 'd';
	fmt[2] = '\0';
	for (i = 0; i < len; i += size, p += size) {
		if (i)
			FUNC2(" ");
		value = size == 4 ? FUNC0(*(const uint32_t *)p) :
			size == 2 ? (*p << 8) | p[1] : *p;
		FUNC2(fmt, value);
	}
	return 0;
}