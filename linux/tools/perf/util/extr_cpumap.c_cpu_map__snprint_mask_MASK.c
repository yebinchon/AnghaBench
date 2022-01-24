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
struct perf_cpu_map {int nr; } ;

/* Variables and functions */
 int FUNC0 (struct perf_cpu_map*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 unsigned char* FUNC3 (int) ; 

size_t FUNC4(struct perf_cpu_map *map, char *buf, size_t size)
{
	int i, cpu;
	char *ptr = buf;
	unsigned char *bitmap;
	int last_cpu = FUNC0(map, map->nr - 1);

	if (buf == NULL)
		return 0;

	bitmap = FUNC3(last_cpu / 8 + 1);
	if (bitmap == NULL) {
		buf[0] = '\0';
		return 0;
	}

	for (i = 0; i < map->nr; i++) {
		cpu = FUNC0(map, i);
		bitmap[cpu / 8] |= 1 << (cpu % 8);
	}

	for (cpu = last_cpu / 4 * 4; cpu >= 0; cpu -= 4) {
		unsigned char bits = bitmap[cpu / 8];

		if (cpu % 8)
			bits >>= 4;
		else
			bits &= 0xf;

		*ptr++ = FUNC2(bits);
		if ((cpu % 32) == 0 && cpu > 0)
			*ptr++ = ',';
	}
	*ptr = '\0';
	FUNC1(bitmap);

	buf[size - 1] = '\0';
	return ptr - buf;
}