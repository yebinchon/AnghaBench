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
struct TYPE_2__ {unsigned int* utf32nfdi; unsigned int* utf32nfdicf; char* utf8nfdi; } ;

/* Variables and functions */
 char HANGUL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_1__* unicode_data ; 
 int verbose ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned int sb = 0xAC00;
	unsigned int lb = 0x1100;
	unsigned int vb = 0x1161;
	unsigned int tb = 0x11a7;
	/* unsigned int lc = 19; */
	unsigned int vc = 21;
	unsigned int tc = 28;
	unsigned int nc = (vc * tc);
	/* unsigned int sc = (lc * nc); */
	unsigned int unichar;
	unsigned int mapping[4];
	unsigned int *um;
        int count;
	int i;

	if (verbose > 0)
		FUNC4("Decomposing hangul\n");
	/* Hangul */
	count = 0;
	for (unichar = 0xAC00; unichar <= 0xD7A3; unichar++) {
		unsigned int si = unichar - sb;
		unsigned int li = si / nc;
		unsigned int vi = (si % nc) / tc;
		unsigned int ti = si % tc;

		i = 0;
		mapping[i++] = lb + li;
		mapping[i++] = vb + vi;
		if (ti)
			mapping[i++] = tb + ti;
		mapping[i++] = 0;

		FUNC0(!unicode_data[unichar].utf32nfdi);
		um = FUNC1(i * sizeof(unsigned int));
		FUNC2(um, mapping, i * sizeof(unsigned int));
		unicode_data[unichar].utf32nfdi = um;

		FUNC0(!unicode_data[unichar].utf32nfdicf);
		um = FUNC1(i * sizeof(unsigned int));
		FUNC2(um, mapping, i * sizeof(unsigned int));
		unicode_data[unichar].utf32nfdicf = um;

		/*
		 * Add a cookie as a reminder that the hangul syllable
		 * decompositions must not be stored in the generated
		 * trie.
		 */
		unicode_data[unichar].utf8nfdi = FUNC1(2);
		unicode_data[unichar].utf8nfdi[0] = HANGUL;
		unicode_data[unichar].utf8nfdi[1] = '\0';

		if (verbose > 1)
			FUNC3(unichar);

		count++;
	}
	if (verbose > 0)
		FUNC4("Created %d entries\n", count);
}