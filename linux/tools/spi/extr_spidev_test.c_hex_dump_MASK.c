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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(const void *src, size_t length, size_t line_size,
		     char *prefix)
{
	int i = 0;
	const unsigned char *address = src;
	const unsigned char *line = address;
	unsigned char c;

	FUNC0("%s | ", prefix);
	while (length-- > 0) {
		FUNC0("%02X ", *address++);
		if (!(++i % line_size) || (length == 0 && i % line_size)) {
			if (length == 0) {
				while (i++ % line_size)
					FUNC0("__ ");
			}
			FUNC0(" |");
			while (line < address) {
				c = *line++;
				FUNC0("%c", (c < 32 || c > 126) ? '.' : c);
			}
			FUNC0("|\n");
			if (length > 0)
				FUNC0("%s | ", prefix);
		}
	}
}