#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  long u32 ;
struct TYPE_3__ {long nr_loops; int /*<<< orphan*/  data_backwards; scalar_t__ data_zero_memset; scalar_t__ data_rand_walk; } ;
struct TYPE_4__ {TYPE_1__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long) ; 
 TYPE_2__* g ; 
 long FUNC3 (long) ; 
 long FUNC4 (long,long) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static u64 FUNC6(u8 *__data, long bytes, int nr, int nr_max, int loop, u64 val)
{
	long words = bytes/sizeof(u64);
	u64 *data = (void *)__data;
	long chunk_0, chunk_1;
	u64 *d0, *d, *d1;
	long off;
	long i;

	FUNC0(!data && words);
	FUNC0(data && !words);

	if (!data)
		return val;

	/* Very simple memset() work variant: */
	if (g->p.data_zero_memset && !g->p.data_rand_walk) {
		FUNC2(data, bytes);
		return val;
	}

	/* Spread out by PID/TID nr and by loop nr: */
	chunk_0 = words/nr_max;
	chunk_1 = words/g->p.nr_loops;
	off = nr*chunk_0 + loop*chunk_1;

	while (off >= words)
		off -= words;

	if (g->p.data_rand_walk) {
		u32 lfsr = nr + loop + val;
		int j;

		for (i = 0; i < words/1024; i++) {
			long start, end;

			lfsr = FUNC3(lfsr);

			start = lfsr % words;
			end = FUNC4(start + 1024, words-1);

			if (g->p.data_zero_memset) {
				FUNC2(data + start, (end-start) * sizeof(u64));
			} else {
				for (j = start; j < end; j++)
					val = FUNC1(data + j, val);
			}
		}
	} else if (!g->p.data_backwards || (nr + loop) & 1) {

		d0 = data + off;
		d  = data + off + 1;
		d1 = data + words;

		/* Process data forwards: */
		for (;;) {
			if (FUNC5(d >= d1))
				d = data;
			if (FUNC5(d == d0))
				break;

			val = FUNC1(d, val);

			d++;
		}
	} else {
		/* Process data backwards: */

		d0 = data + off;
		d  = data + off - 1;
		d1 = data + words;

		/* Process data forwards: */
		for (;;) {
			if (FUNC5(d < data))
				d = data + words-1;
			if (FUNC5(d == d0))
				break;

			val = FUNC1(d, val);

			d--;
		}
	}

	return val;
}