#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void u8 ;
typedef  long u64 ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  cpu_set_t ;
struct TYPE_2__ {int print_once; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long HPSIZE ; 
 int /*<<< orphan*/  MADV_HUGEPAGE ; 
 int /*<<< orphan*/  MADV_NOHUGEPAGE ; 
 int MAP_ANON ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 TYPE_1__* g ; 
 int FUNC5 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 long FUNC10 () ; 

__attribute__((used)) static u8 *FUNC11(ssize_t bytes0, int map_flags,
		      int init_zero, int init_cpu0, int thp, int init_random)
{
	cpu_set_t orig_mask;
	ssize_t bytes;
	u8 *buf;
	int ret;

	if (!bytes0)
		return NULL;

	/* Allocate and initialize all memory on CPU#0: */
	if (init_cpu0) {
		int node = FUNC8(0);

		orig_mask = FUNC3(node);
		FUNC2(node);
	}

	bytes = bytes0 + HPSIZE;

	buf = (void *)FUNC7(0, bytes, PROT_READ|PROT_WRITE, MAP_ANON|map_flags, -1, 0);
	FUNC0(buf == (void *)-1);

	if (map_flags == MAP_PRIVATE) {
		if (thp > 0) {
			ret = FUNC5(buf, bytes, MADV_HUGEPAGE);
			if (ret && !g->print_once) {
				g->print_once = 1;
				FUNC9("WARNING: Could not enable THP - do: 'echo madvise > /sys/kernel/mm/transparent_hugepage/enabled'\n");
			}
		}
		if (thp < 0) {
			ret = FUNC5(buf, bytes, MADV_NOHUGEPAGE);
			if (ret && !g->print_once) {
				g->print_once = 1;
				FUNC9("WARNING: Could not disable THP: run a CONFIG_TRANSPARENT_HUGEPAGE kernel?\n");
			}
		}
	}

	if (init_zero) {
		FUNC4(buf, bytes);
	} else {
		/* Initialize random contents, different in each word: */
		if (init_random) {
			u64 *wbuf = (void *)buf;
			long off = FUNC10();
			long i;

			for (i = 0; i < bytes/8; i++)
				wbuf[i] = i + off;
		}
	}

	/* Align to 2MB boundary: */
	buf = (void *)(((unsigned long)buf + HPSIZE-1) & ~(HPSIZE-1));

	/* Restore affinity: */
	if (init_cpu0) {
		FUNC1(orig_mask);
		FUNC6();
	}

	return buf;
}