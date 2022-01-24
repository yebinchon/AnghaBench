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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_HEXDUMP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *pkt, size_t length, u64 addr)
{
	const unsigned char *address = (unsigned char *)pkt;
	const unsigned char *line = address;
	size_t line_size = 32;
	unsigned char c;
	char buf[32];
	int i = 0;

	if (!DEBUG_HEXDUMP)
		return;

	FUNC1(buf, "addr=%llu", addr);
	FUNC0("length = %zu\n", length);
	FUNC0("%s | ", buf);
	while (length-- > 0) {
		FUNC0("%02X ", *address++);
		if (!(++i % line_size) || (length == 0 && i % line_size)) {
			if (length == 0) {
				while (i++ % line_size)
					FUNC0("__ ");
			}
			FUNC0(" | ");	/* right close */
			while (line < address) {
				c = *line++;
				FUNC0("%c", (c < 33 || c == 255) ? 0x2E : c);
			}
			FUNC0("\n");
			if (length > 0)
				FUNC0("%s | ", buf);
		}
	}
	FUNC0("\n");
}